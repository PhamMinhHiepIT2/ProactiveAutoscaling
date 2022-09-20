from datetime import datetime


def datetime_format(datetime_str: str):
    """
    Format datetime in string format to correct format
    Expect format: 
        yyyy-MM-dd HH:mm:SS

    Args:
        datetime_str (str): datetime in string format which get from data file (ex: 01/Aug/1995:00:00:07)
    """
    date_formatted = datetime.strptime(datetime_str, "%d/%b/%Y:%H:%M:%S")
    return date_formatted


if __name__ == "__main__":
    dt_str = "01/Aug/1995:00:00:07"
    tz = "-0400"
    datetime_format(dt_str)
