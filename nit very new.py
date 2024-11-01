import mysql.connector as sqltor
mycon=sqltor.connect(host="localhost", user="root", passwd="root123", database="test")
if mycon.is_connected()==False:
    print("Error in connecting MySQL database")
cursor=mycon.cursor()

def add():
    prod_id=(input("Enter the product id:"))
    prod_name=input("Enter the product name:")
    prod_type=input("Enter the product type:")
    prod_desc=input("Enter the product description:")
    prod_stock=input("Enter no.of stock:")
    prod_price=input("Enter per Product Price:")
    prod_status=input("Enter the Product Availability:")
    prod_purchase_date=input("Enter date:")
    ad="insert into Product_detail(Prod_id,Prod_name,Prod_type,Prod_desc,Prod_stock,Prod_price,Prod_status,Prod_purchase_date)values(%s, %s, %s, %s, %s, %s, %s, %s)"
    val=(prod_id,prod_name,prod_type,prod_desc,prod_stock,prod_price,prod_status,prod_purchase_date) 
    cursor.execute(ad,val)
    mycon.commit()
    print("Record added in database")
    c=input("Do you want to continue(y/n):")
    if c=='y' or c=='Y':
        add()
    elif c=='n' or c=='N':
        admin()
        
def update():
    prod_id=(input("Enter the existing record product id to edit name:"))
    prod_name=input("Enter the product name:")
    prod_type=input("Enter the product type:")
    prod_desc=input("Enter the product description:")
    prod_stock=input("Enter no.of stock:")
    prod_price=input("Enter per Product Price:")
    prod_status=input("Enter the Product Availability:")
    prod_purchase_date=input("Enter date:")
    ad="""Update Product_detail set Prod_Name = %s,Prod_type = %s,Prod_desc = %s, Prod_stock = %s,Prod_price = %s,Prod_status = %s ,prod_purchase_date = %s where Prod_id = %s"""
    inputData = (prod_name,prod_type,prod_desc,prod_stock,prod_price,prod_status,prod_purchase_date,prod_id)
    cursor.execute(ad,inputData)
    mycon.commit()
    print("Record updated in database")
    c=input("Do you want to continue(y/n):")
    if c=='y' or c=='Y':
        update()
    elif c=='n' or c=='N':
        admin()
        
def delete():
    prod_id=(input("Enter the existing record product id to delete:"))
    ad= """Delete from Product_detail where Prod_id = %s"""
    cursor.execute(ad,(prod_id,))
    mycon.commit()
    print("Record deleted from database")
    c=input("Do you want to continue(y/n):")
    if c=='y' or c=='Y':
        delete()
    elif c=='n' or c=='N':
        admin()
        
def display():
    ad="select * from Product_detail"
    cursor.execute(ad)
    data=cursor.fetchall()
    for row in data:
        print(row)
    admin()

def search():
    prod_id=input("Enter the existing record product id to search:")
    ad= """select * from Product_detail where Prod_id = %s"""
    cursor.execute(ad,(prod_id,))
    data=cursor.fetchall()
    for row in data:
        print(row)
    c=input("Do you want to continue(y/n):")
    if c=='y' or c=='Y':
        search()
    elif c=='n' or c=='N':
        admin()

def sale():
    s_price=0
    prod_name=''
    prod_id=input("Enter the existing record product id to search:")
    ad= """select * from Product_detail where Prod_id = %s"""
    cursor.execute(ad,(prod_id,))
    data=cursor.fetchall()
    for row in data:
        prod_name=row[1]
        s_price=int(row[5])  
    cust_name=input("Enter the customer name:")
    cont=input("Enter contact number:")
    cust_address=input("enter customer address:")
    pincode=input("enter your pincode:")
    no=int(input("Enter No of quantity:"))
    print("sale price:",s_price)
    ad="insert into sale_detail(Prod_id,cust_name,cont,cust_address,pincode,s_price)values(%s, %s, %s, %s, %s, %s)"
    inputData = (prod_id,cust_name,cont,cust_address,pincode,s_price)
    cursor.execute(ad,inputData)
    mycon.commit()
    print()
    print("            -------------------------------------------------------------------------")
    print("                                            Total Sales                              ")
    print("            -------------------------------------------------------------------------")
    print("                                Product_id          ="            ,prod_id     ,      )
    print("                                Product_name        ="            ,prod_name   ,      )
    print("                                Customer Name       ="            ,cust_name   ,      )
    print("                                No of quantity      ="            ,no          ,      )
    print("                                Product Price       ="            ,s_price     ,      )
    tot=no*s_price
    print("                                Total sale Price    ="            ,tot         ,      )
    print("            -------------------------------------------------------------------------")
    ad="insert into total_sale(Prod_id,cust_name,no,s_price,total)values(%s, %s, %s, %s, %s)"
    inputData = (prod_id,cust_name,no,s_price,tot)
    cursor.execute(ad,inputData)
    mycon.commit()
    print("Record updated in database")
    c=input("Do you want to continue(y/n):")
    if c=='y' or c=='Y':
        sale()
    elif c=='n' or c=='N':
        customer()
        
def display1():
    ad="select * from total_sale"
    cursor.execute(ad)
    data=cursor.fetchall()
    for row in data:
        print(row)
    customer()

def main():
    print("_____________________________________________________________________________________________")
    print()
    print("@                     #----------SALES MANAGEMENT SYSTEM-----------#                        @")
    print("@                     #=#-----STEEL ZONE(building materials)-----#=#                        @")
    print("_____________________________________________________________________________________________")
    print()
    print("                                  !!!   WELCOME   !!!                                        ")
    print()
    print("-----------------------------")
    print("+        _MAIN-MENU_        +")
    print("-----------------------------")
    print("+         1.admin           +")
    print("+         2.customer        +")
    print("+         3.exit            +")
    print("-----------------------------")
    choice=int(input("Enter your inner choice[1-3]:"))
    if choice==1:
        admin()
    elif choice==2:
        customer()
    elif choice==3:
        exit()
        
        

def admin():
    print()
    print("---------------------------------------")
    print("+                ADMIN                +")
    print("--------------------------------------+")
    print("+     1.Add                           +")
    print("+     2.Update                        +")
    print("+     3.Delete                        +")
    print("+     4.Display-Product table         +")
    print("+     5.search                        +")
    print("+     6.Exit                          +")
    print("---------------------------------------")
        
    choice2=int(input("Enter your inner choice[1-6]:"))
    if choice2==1:
        add()
    elif choice2==2:
        update()
    elif choice2==3:
        delete()
    elif choice2==4:
        display()   
    elif choice2==5:
        search()
    elif choice2==6:
        main()
    else: 
        print("select viewed options only...")
        
def customer():                     
       print("--------------------------------------")
       print("+             CUSTOMER               +")
       print("--------------------------------------")
       print("+   1.sale                           +")
       print("+   2.Display-Sale table             +")
       print("+   3.Exit                           +")
       print("--------------------------------------")
       choice3=int(input("Enter your choice[1-3]:"))      
       if choice3==1:
           sale()
       elif choice3==2:
           display1()
       elif choice3==3: 
           main()
       else:
           print("select viewed options only...")
           
def exit():
        print("thank you good bye...")
main() 