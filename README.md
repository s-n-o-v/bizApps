# bizApps
bizApps test C# WebFroms

:: Постановка задачи :::::::::::::::::::::::::::::::::::
Предлагаю что-нибудь типа этого:
- взять какой-нить публичный сервис, неважно какой и что он делат, лишь бы возвращал данные по запросу.
- простую страничку с TextBox одним или несколько, чтобы передавать туда параметры
- GridView или что-нить вроде него с чекбоксами. Две кнопки.
Задача:
- по нажатию первой кнопки получить данные от удаленного сервиса используя параметры в TextBox и отобразить их в GridView, для упрощения можно не замарачиваться со страничным отображением. Просто вывалить все что есть
- чекбоксами выбрать нужные строки
- по нажатию кнопки добавить выбранные строки в файл или базу. (я больше за файл, чтобы потом не пришлось мучиться разворачивать его приложение у себя локально)
- пару простых валидаторов: для первой кнопки что текстбоксы не пустые, для второй кнопки что выбран хотя бы один чекбокс (Валидатор для GridView может быть через чур для первого задания).

В общем не сильно просто, но и не супер сложно. Заодно полезно, скоро надо будет eComm интегрировать с куче сервисов
Стек технологий: С# ASP.NET Webforms. По возможности использовать версию .Net 4.6.2 или ниже, хотя это не сильно принципиально

