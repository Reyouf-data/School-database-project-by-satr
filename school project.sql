-- ============================================================
-- مشروع SQL المستوى الأول - مدرسة التميز للتعليم الثانوي
-- ============================================================

-- إنشاء قاعدة البيانات
CREATE DATABASE IF NOT EXISTS altamayoz_school;

-- تحديد قاعدة البيانات للعمل عليها
USE altamayoz_school;

-- ==========================================
-- إنشاء جدول الطلاب
-- ==========================================
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,        -- الرقم التسلسلي
    student_name VARCHAR(100),                -- اسم الطالب
    birth_date DATE,                          -- تاريخ الميلاد
    gender CHAR(1),                           -- الجنس M أو F
    enrollment_date DATE,                     -- تاريخ الالتحاق
    email VARCHAR(100),                       -- البريد الإلكتروني
    grade_level INT,                          -- المستوى الدراسي 1-6
    track VARCHAR(20),                        -- المسار علمي أو انساني
    gpa DECIMAL(5,2)                          -- المعدل التراكمي من 100
);

-- ==========================================
-- إنشاء جدول المعلمين
-- ==========================================
CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,        -- الرقم التسلسلي
    teacher_name VARCHAR(100),                -- اسم المعلم
    birth_date DATE,                          -- تاريخ الميلاد
    gender CHAR(1),                           -- الجنس M أو F
    email VARCHAR(100),                       -- البريد الإلكتروني
    office_number INT                         -- رقم المكتب
);

-- ==========================================
-- إنشاء جدول المواد
-- ==========================================
CREATE TABLE subjects (
    id INT PRIMARY KEY AUTO_INCREMENT,        -- الرقم التسلسلي
    subject_name VARCHAR(100)                 -- اسم المادة
);

-- عرض جميع الجداول في قاعدة البيانات
SHOW TABLES;

-- ==========================================
-- إدخال بيانات الطلاب (30 طالب)
-- ==========================================
INSERT INTO students (student_name, birth_date, gender, enrollment_date, email, grade_level, track, gpa) VALUES
('أحمد محمد العمري',       '2007-03-15', 'M', '2022-09-01', 'ahmed.omari@altamayoz.edu.sa',      1, 'علمي',    88.50),
('سارة عبدالله القحطاني', '2006-07-22', 'F', '2021-09-01', 'sara.qahtani@altamayoz.edu.sa',     2, 'انساني',  91.00),
('خالد سعد الغامدي',      '2005-11-10', 'M', '2020-09-01', 'khalid.ghamdi@altamayoz.edu.sa',    3, 'علمي',    75.30),
('نورة فهد الزهراني',     '2004-05-18', 'F', '2019-09-01', 'noura.zahrani@altamayoz.edu.sa',    4, 'انساني',  83.70),
('عمر علي الشهري',        '2003-09-25', 'M', '2018-09-01', 'omar.shehri@altamayoz.edu.sa',      5, 'علمي',    92.10),
('ريم محمد الدوسري',      '2002-01-30', 'F', '2017-09-01', 'reem.dosari@altamayoz.edu.sa',      6, 'انساني',  78.40),
('عبدالله يوسف المالكي',  '2007-06-12', 'M', '2022-09-01', 'abd.maliki@altamayoz.edu.sa',       1, 'علمي',    85.20),
('لجين أحمد العتيبي',     '2006-02-28', 'F', '2021-09-01', 'lujain.otaibi@altamayoz.edu.sa',    2, 'علمي',    94.60),
('فيصل ناصر الحربي',      '2005-08-14', 'M', '2020-09-01', 'faisal.harbi@altamayoz.edu.sa',     3, 'انساني',  70.80),
('هند سلطان البقمي',      '2004-12-03', 'F', '2019-09-01', 'hind.baqmi@altamayoz.edu.sa',       4, 'علمي',    87.90),
('تركي راشد السبيعي',     '2003-04-20', 'M', '2018-09-01', 'turki.subaie@altamayoz.edu.sa',     5, 'انساني',  65.50),
('دانة وليد الرشيدي',     '2002-10-07', 'F', '2017-09-01', 'dana.rashidi@altamayoz.edu.sa',     6, 'علمي',    96.30),
('بندر حمد العجمي',       '2007-01-19', 'M', '2022-09-01', 'bandar.ajmi@altamayoz.edu.sa',      1, 'انساني',  72.10),
('شيماء إبراهيم الجهني',  '2006-05-08', 'F', '2021-09-01', 'shaimaa.johani@altamayoz.edu.sa',   2, 'علمي',    89.40),
('ماجد عادل الثبيتي',     '2005-09-17', 'M', '2020-09-01', 'majed.thubaiti@altamayoz.edu.sa',   3, 'علمي',    81.60),
('غدير حسن الأسمري',      '2004-03-26', 'F', '2019-09-01', 'ghadir.asmari@altamayoz.edu.sa',    4, 'انساني',  77.20),
('سلطان مشعل الشمري',     '2003-07-11', 'M', '2018-09-01', 'sultan.shamri@altamayoz.edu.sa',    5, 'علمي',    90.80),
('أريج طلال القرني',      '2002-11-24', 'F', '2017-09-01', 'areej.qarni@altamayoz.edu.sa',      6, 'انساني',  84.50),
('وليد جابر البلوي',      '2007-04-05', 'M', '2022-09-01', 'walid.balawi@altamayoz.edu.sa',     1, 'علمي',    68.90),
('رنا صالح الحازمي',      '2006-08-13', 'F', '2021-09-01', 'rana.hazmi@altamayoz.edu.sa',       2, 'انساني',  93.70),
('ياسر فراج العنزي',      '2005-12-22', 'M', '2020-09-01', 'yaser.anazi@altamayoz.edu.sa',      3, 'انساني',  76.40),
('بسمة خالد الصاعدي',     '2004-06-30', 'F', '2019-09-01', 'basma.saedi@altamayoz.edu.sa',      4, 'علمي',    88.10),
('نايف سعود المطيري',     '2003-02-16', 'M', '2018-09-01', 'nayef.mutairi@altamayoz.edu.sa',    5, 'علمي',    73.60),
('علياء حمود الزبيدي',    '2002-06-09', 'F', '2017-09-01', 'alya.zubaidi@altamayoz.edu.sa',     6, 'انساني',  95.20),
('حمزة أنس العصيمي',      '2007-10-01', 'M', '2022-09-01', 'hamza.osaimi@altamayoz.edu.sa',     1, 'انساني',  80.30),
('تالا رامي الغامدي',     '2006-03-18', 'F', '2021-09-01', 'tala.ghamdi@altamayoz.edu.sa',      2, 'علمي',    86.70),
('مصعب زياد المره',       '2005-07-27', 'M', '2020-09-01', 'musab.almurra@altamayoz.edu.sa',    3, 'علمي',    69.50),
('جواهر سامي البريكي',    '2004-11-14', 'F', '2019-09-01', 'jawaher.braiki@altamayoz.edu.sa',   4, 'انساني',  91.80),
('رياض نجم الحمداني',     '2003-01-23', 'M', '2018-09-01', 'riyad.hamdani@altamayoz.edu.sa',    5, 'انساني',  74.90),
('لمى وائل السلمي',       '2002-05-06', 'F', '2017-09-01', 'lama.salmi@altamayoz.edu.sa',       6, 'علمي',    97.00);

-- ==========================================
-- إدخال بيانات المعلمين (10 معلمين)
-- ==========================================
INSERT INTO teachers (teacher_name, birth_date, gender, email, office_number) VALUES
('د. سعد محمد الغامدي',   '1980-04-10', 'M', 'saad.ghamdi@altamayoz.edu.sa',     101),
('أ. منى أحمد الزهراني',  '1985-08-22', 'F', 'mona.zahrani@altamayoz.edu.sa',    102),
('د. فهد علي الشهري',     '1978-12-15', 'M', 'fahad.shehri@altamayoz.edu.sa',    103),
('أ. هيفاء خالد العتيبي', '1990-03-07', 'F', 'haifa.otaibi@altamayoz.edu.sa',    104),
('د. ناصر يوسف الحربي',   '1975-07-19', 'M', 'naser.harbi@altamayoz.edu.sa',     105),
('أ. رانيا سامي القحطاني','1988-11-28', 'F', 'rania.qahtani@altamayoz.edu.sa',   106),
('د. عبدالعزيز حمد المالكي','1972-05-03','M', 'abdulaziz.maliki@altamayoz.edu.sa',107),
('أ. سمر طلال الدوسري',   '1992-09-14', 'F', 'samar.dosari@altamayoz.edu.sa',    108),
('د. وليد إبراهيم الرشيدي','1968-01-25','M', 'walid.rashidi@altamayoz.edu.sa',   109),
('أ. نجلاء فراج الشمري',  '1995-06-30', 'F', 'najla.shamri@altamayoz.edu.sa',    110);

-- ==========================================
-- إدخال بيانات المواد (6 مواد)
-- ==========================================
INSERT INTO subjects (subject_name) VALUES
('الرياضيات'),
('اللغة العربية'),
('اللغة الإنجليزية'),
('الفيزياء'),
('التاريخ'),
('الحاسب الآلي');

-- عرض جميع بيانات الطلاب
SELECT * FROM students;

-- عرض جميع بيانات المعلمين
SELECT * FROM teachers;

-- عرض جميع بيانات المواد
SELECT * FROM subjects;

-- عرض الطلاب مرتبين تصاعدياً حسب الاسم
SELECT * FROM students
ORDER BY student_name ASC;

-- عرض الطلاب مع اسم مستعار للعمود
SELECT
    id,
    student_name AS 'الاسم',
    grade_level AS 'المستوى',
    track AS 'المسار',
    gpa AS 'المعدل'
FROM students;

-- تغيير البريد الإلكتروني لأحمد العمري
UPDATE students
SET email = 'ahmed.new@altamayoz.edu.sa'
WHERE id = 1;

-- تغيير رقم مكتب د. سعد الغامدي
UPDATE teachers
SET office_number = 201
WHERE id = 1;

-- تغيير اسم جدول المواد
RENAME TABLE subjects TO courses;

-- للتأكد بعد التغيير
SHOW TABLES;
