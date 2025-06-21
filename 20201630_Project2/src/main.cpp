#include <iostream>
#include <mysql.h>
#include <iomanip>
#include <string>

using namespace std;
void init_query(string *query) {
    query[1] = "SELECT s.store_name, p.product_upc, p.product_name, p.brand, i.inventory_level "
               "FROM store s "
               "JOIN inventory i ON s.store_id = i.store_id "
               "JOIN product p ON i.product_upc = p.product_upc "
               "WHERE ";


    query[2] = "SELECT store_id, store_name, product_UPC, product_name, total_sales_volume "
               "FROM ( "
               "    SELECT st.store_id, s.store_name, si.product_UPC, p.product_name, "
               "           SUM(si.quantity) AS total_sales_volume, "
               "           ROW_NUMBER() OVER (PARTITION BY st.store_id ORDER BY SUM(si.quantity) DESC) as rn "
               "    FROM sale_transaction st "
               "    JOIN store s ON st.store_id = s.store_id "
               "    JOIN sale_item si ON st.transaction_id = si.transaction_id "
               "    JOIN product p ON si.product_UPC = p.product_UPC "
               "    WHERE st.transaction_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH) "
               "    GROUP BY st.store_id, s.store_name, si.product_UPC, p.product_name "
               ") AS ranked_sales "
               "WHERE rn = 1 "
               "ORDER BY store_name, total_sales_volume DESC;";

    query[3]= "SELECT s.store_id, s.store_name, SUM(st.total_amount) AS total_revenue "
               "FROM store s "
               "JOIN sale_transaction st ON s.store_id = st.store_id "
               "WHERE "
               "    QUARTER(st.transaction_date) = QUARTER(CURDATE()) "
               "    AND YEAR(st.transaction_date) = YEAR(CURDATE()) "
               "GROUP BY s.store_id, s.store_name "
               "ORDER BY total_revenue DESC "
               "LIMIT 1;";

    query[4] = "SELECT v.vendor_id, v.vendor_name, "
               "       COUNT(DISTINCT s.product_UPC) AS num_supplied_products, "
               "       SUM(si.quantity) AS total_sold_quantity "
               "FROM vendor v "
               "JOIN supplies s ON v.vendor_id = s.vendor_id "
               "LEFT JOIN sale_item si ON s.product_UPC = si.product_UPC "
               "GROUP BY v.vendor_id, v.vendor_name "
               "ORDER BY num_supplied_products DESC, total_sold_quantity DESC "
               "LIMIT 1;";

    query[5] = "SELECT i.store_id, s.store_name, i.product_UPC, p.product_name, "
               "       i.inventory_level, i.reorder_threshold, i.reorder_quantity, i.last_order_date "
               "FROM inventory i "
               "JOIN store s ON i.store_id = s.store_id "
               "JOIN product p ON i.product_UPC = p.product_UPC "
               "WHERE i.inventory_level < i.reorder_threshold "
               "ORDER BY i.store_id, i.product_UPC;";

    //query[6], [0]은 둘이서 세트
    query[6] = "SELECT p_other.product_UPC, p_other.product_name, "
                       "COUNT(si_other.product_UPC) AS co_purchase_count "
                "FROM Sale_transaction st "
                "JOIN Sale_Item si_coffee ON st.transaction_id = si_coffee.transaction_id "
                "JOIN Product p_coffee ON si_coffee.product_UPC = p_coffee.product_UPC "
                "JOIN Sale_Item si_other ON st.transaction_id = si_other.transaction_id "
                "JOIN Product p_other ON si_other.product_UPC = p_other.product_UPC "
                "WHERE st.loyalty_id IS NOT NULL ";
            //"    AND p_coffee.product_name = '" + user_input_coffee_name + "' "
    query[0] = "AND si_other.product_UPC != si_coffee.product_UPC "
                "GROUP BY  p_other.product_UPC, p_other.product_name "
                "ORDER BY co_purchase_count DESC "
                "LIMIT 3;";
    

    query[7] = "SELECT ownership_type, store_id, store_name, distinct_product_count "
               "FROM ( "
               "    SELECT s.ownership_type, s.store_id, s.store_name, COUNT(DISTINCT i.product_UPC) AS distinct_product_count, "
               "           ROW_NUMBER() OVER (PARTITION BY s.ownership_type ORDER BY COUNT(DISTINCT i.product_UPC) DESC)  rn "
               "    FROM store s "
               "    JOIN inventory i ON s.store_id = i.store_id "
               "    GROUP BY s.ownership_type, s.store_id, s.store_name"
               ") AS ranked_stores "
               "WHERE rn = 1 "
               "ORDER BY ownership_type DESC;";

}

int main() {
    
    
    string *query = new string[8];
    init_query(query);

    MYSQL *conn;
    MYSQL_RES *res;
    MYSQL_ROW row;

    const char *server = "localhost";
    const char *user = "root";
    const char *password = "1234";
    const char *database = "store";

    // MySQL 초기화
    conn = mysql_init(nullptr);
    if (conn == nullptr) {
        cerr << "mysql_init() failed\n";
        return 1;
    }

    // MySQL 서버 연결
    if (mysql_real_connect(conn, server, user, password, database, 0, nullptr, 0) == nullptr) {
        cerr << "mysql_real_connect() failed\n";
        mysql_close(conn);
        return 1;
    }

    int n;
    while(1){
        //유저 인터페이스
        cout << "----------- SELECT QUERY TYPES -----------\n\n";
        cout << "\t1. TYPE 1\n";
        cout << "\t2. TYPE 2\n";
        cout << "\t3. TYPE 3\n";
        cout << "\t4. TYPE 4\n";
        cout << "\t5. TYPE 5\n";
        cout << "\t6. TYPE 6\n";
        cout << "\t7. TYPE 7\n";
        cout << "\t0. QUIT\n\n";
        cout << "Select: ";
        cin >> n;
        

        string sql_query = "";
        if (n == 0) {
            cout << "Program terminating\n";
            // 리소스 해제
            mysql_free_result(res);
            mysql_close(conn);
            delete[] query;
            return 1;
        } else if (n ==1) {  //입력받은 TYPE에 따라 쿼리문을 다르게 설정
            cout << "------- TYPE 1 -------\n";
            cout << "** Which stores currently carry a certain product (by UPC, name, or brand),and how much inventory do they have? **\n";
            cout << "Enter product identifier (UPC, name, or brand): ";
            string identifier;
            cin.ignore();
            getline(cin, identifier);
            sql_query = query[1];
            
            if(identifier == "UPC" || identifier == "upc") {
                cout << "Enter UPC: ";
                string upc;
                getline(cin, upc);
                sql_query += "p.product_upc = '" + upc + "'";
            } else if(identifier == "name") {
                cout << "Enter product name: ";
                string name;
                getline(cin, name);
                sql_query += "p.product_name = '" + name + "'";
            } else if(identifier == "brand") {
                cout << "Enter brand: ";
                string brand;
                getline(cin, brand);
                sql_query += "p.brand = '" + brand + "'";
            } else {
                cout << "Invalid identifier. Please enter UPC, name, or brand.\n";
                continue;
            }
        } else if (n == 2) {
            cout << "------- TYPE 2 -------\n";
            cout << "** Which products have the highest sales volume in each store over the past month? **\n";
            sql_query = query[2];
        } else if (n == 3) {
            cout << "------- TYPE 3 -------\n";
            cout << "** Which store has generated the highest overall revenue this quarter? **\n";
            sql_query = query[3];
        } else if (n == 4) {
            cout << "------- TYPE 4 -------\n";
            cout << "** Which vendor supplies the most products across the chain, and how many total units have been sold? **\n";
            sql_query = query[4];
        } else if (n == 5) {
            cout << "------- TYPE 5 -------\n";
            cout << "** Which products in each store are below the reorder threshold and need restocking? **\n";
            sql_query = query[5];
        } else if (n == 6) {
            cout << "------- TYPE 6 -------\n";
            cout << "** List the top 3 items that loyalty program customers typically purchase with coffee. **\n";
            cout << "Enter a coffee product name: ";
            string coffee_name;
            cin.ignore();
            getline(cin, coffee_name);
            sql_query = query[6];
            sql_query += "    AND p_coffee.product_name = '" + coffee_name + "' ";
            sql_query += query[0];

        } else if (n == 7) {
            cout << "------- TYPE 7 -------\n";
            cout << "** Among franchise-owned stores, which one offers the widestvariety of products, and how does that compare to corporate-owned stores? **\n";
            sql_query = query[7];
        }//end if n == #

        // 쿼리 실행
    if (mysql_query(conn, sql_query.c_str())) {
        cerr << "SELECT failed. Error: " << mysql_error(conn) << "\n";
        mysql_close(conn);
        return 1;
    }

    // 결과 저장
    res = mysql_store_result(conn);
    if (res == nullptr) {
        cerr << "mysql_store_result() failed. Error: " << mysql_error(conn) << "\n";
        mysql_close(conn);
        return 1;
    }

    // 필드 개수 가져오기
    int num_fields = mysql_num_fields(res);
    MYSQL_FIELD *fields = mysql_fetch_fields(res);

    // 헤더 출력
    for (int i = 0; i < num_fields; i++) {
        cout << left << setw(40) << fields[i].name;
    }
    cout << "\n";
   
    // 행 출력
    while ((row = mysql_fetch_row(res))) {
        for (int i = 0; i < num_fields; i++) {
            cout << left << setw(40) << (row[i] ? row[i] : "NULL");
        }
        cout << "\n";
    }


    }//end while



    return 0;
}
