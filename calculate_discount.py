def calculate_discount(price,discount=0.1):
    final_price=price-price*discount
    return final_price

print(calculate_discount(100,20))
