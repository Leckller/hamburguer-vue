*** Variables ***
&{Orders}
...             link_orders=//a[@href="/orders"]
...             first_order=(//article[@class="burger-item"]/)[1]
...             first_order_id=(//p)[1]
...             client=//p[@data-testid=]
