
1.	Створіть базу з назвою «».
2.	Перевірте з’єднання з базою. 
Файл налаштування \src\main\resources\application.properties
Налаштування до бази наступні:
spring.datasource.username = root
spring.datasource.password = 123456
spring.datasource.url = jdbc:mysql://localhost:3306/deliveryApp

3.	Запустіть сервер та зайдіть на сторінку http://localhost:8080/
4.	Зареєструйтесь.
5.	Залогуйтесь.
6.	Перейдіть на вкладку CREATE та створіть декілька товарів до магазинів. 
Завантажте фото (можно обрати в папці src\main\webapp\images)
Поле Category: необхідно одне вказати з наступного: Mc , KFC, coupons.
7.	Перейдіть до вкладки  SHOP, щоб  обрати товари.
8.	Перейдіть до вкладки BUCKET, щоб переглянути обрані товари
