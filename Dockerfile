# Используем образ Windows Server Core
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Устанавливаем рабочую директорию
WORKDIR /app

# Скачиваем и устанавливаем необходимые компоненты
ADD https://www.dropbox.com/scl/fi/qdyd4p9t6xoabl95n5o3g/Downloads.bat?rlkey=snr74vv1vr8k5suujugvrhjtm&dl=1 Downloads.bat

# Запускаем батник для установки необходимых компонентов
RUN cmd /c Downloads.bat

# Копируем скрипт show.bat в контейнер (убедитесь, что этот файл находится в той же директории)
COPY show.bat .

# Команда для входа в AnyDesk
CMD ["cmd", "/c", "show.bat"]
