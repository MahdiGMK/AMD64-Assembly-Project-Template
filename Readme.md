<div dir="rtl"> 
<h1> برنامه های پیشنیاز </h1>
برای اجرای برنامه های به زبان اسمبلی به ۳ ابزار 
    gcc و nasm و make
    نیاز داریم که توسط دستور زیر دریافت میشوند. 
    همچنین به این نیاز داریم که مخزن را روی 
    
<div dir="ltr">

    sudo apt update && sudo apt install gcc nasm make
    git clone https://github.com/MahdiGMK/AMD64-Assembly-Project-Template x86env && cd x86env

</div>
       
<h2> نحوه استفاده در ویندوز </h2>
    برای استفاده از این مخزن در محیط ویندوز به ابزار
    WSL 
    نیازمند هستید. 
    لینک های مقابل میتوانند راهنمای خوبی باشند : 

[WSL Install Doc](https://learn.microsoft.com/en-us/windows/wsl/install)
[Ubuntu Store Page](https://apps.microsoft.com/detail/9pdxgncfsczv?hl=en-us&gl=US)

<h2> نحوه استفاده در مک </h2>
برای استفاده از این مخزن در مک به ابزار های مجازی سازی نیازمندیم. در ویدئوی زیر نحوه استفاده از ابزار
UTM
در مک و بالا آوردن سیستم عامل 
Ubuntu-server
تحت
amd64
را مشاهده میکنیم.

![MacUTM](https://github.com/MahdiGMK/AMD64-Assembly-Project-Template/raw/refs/heads/master/mac_utm.mp4)

با تشکر از کسری احمدی بابت تهیه این آموزش.

<h1> نحوه استفاده </h1>

این مخزن شامل تعدادی نمونه کد
برای آموزش زبان اسمبلی 
x86-64
است.
این نمونه کد ها از مثال های ساده دستورات جمع و ضرب شروع شده
و تا خواندن آرگومان های برنامه و معرفی ثبات های برداری(اعشاری)
ادامه میابد.
توصیه میشود که از مثال شماره ۱
شروع نموده و به ترتیب جلو بروید.
توضیحات مربوطه هر مثال با فرض دانش 
نسبت به مثال های قبلی آن مطرح شده است.
    
برای اجرای هرکدام از مثال ها کافیست فایل
    Makefile 
    را باز کنید و 
    مقدار متغیر 
    ASM_NAME
    را برابر با نام مثالی که میخواهید اجرا کنید قرار دهید
    (بدون پسوند)
    سپس دستور
    `make run`
    را اجرا کنید.

همچنین در ادامه، برای بررسی خروجی کامپایلر ها میتوانید از 
[Godbolt - Compiler Explorer](https://godbolt.org/)
    استفاده  کنید.

<h2> نحوه توسعه برنامه های دلخواه </h2>
کافیست فایل 
sample.s
را کپی کنید، 
سپس کد اسمبلی مورد نظر خود را درون ان توسعه دهید و 
در نهایت 
مقدار متغیر
ASM_NAME
درون 
Makefile
را مانند قبل، برابر با نام کدتان قرار دهید. در نهایت مانند بخش قبل 
    برنامه هایتان را اجرا کنید.

<h1> لینک های مفید </h1>

[Felix Cloutier x86](https://www.felixcloutier.com/x86/)

[SystemV ABI](https://wiki.osdev.org/System_V_ABI#x86-64)

[Godbolt - Compiler Explorer](https://godbolt.org/)

گرداوری شده در آذر ۱۴۰۳ توسط مهدی بهرامیان
</div>


