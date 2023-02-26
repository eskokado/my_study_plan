from datetime import datetime

def calculate_age(born):
    today = datetime.today()
    return today.year - born.year - ((today.month, today.day) < (born.month, born.day))

print("Enter your birth date in the format YYYY-MM-DD:")
birth_date_input = input()

birth_year, birth_month, birth_day = map(int, birth_date_input.split("-"))
birth_date = datetime(birth_year, birth_month, birth_day)
#INPUT using, for example 1988-1-1, (year-month-date)
age = calculate_age(birth_date)
print("Age:", age)

