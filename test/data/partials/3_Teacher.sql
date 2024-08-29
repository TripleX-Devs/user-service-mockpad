-- CreateTable
CREATE TABLE
    "Teacher" (
        "id" TEXT NOT NULL,
        "name" TEXT NOT NULL,
        "gender" "Gender" NOT NULL,
        "dateOfBirth" TIMESTAMP(3) NOT NULL,
        "phoneNumber" TEXT NOT NULL,
        "email" TEXT NOT NULL,
        "category" "Category" NOT NULL,
        "password" TEXT NOT NULL,
        "permanentAddress" TEXT NOT NULL,
        "currentAddress" TEXT NOT NULL,
        "city" TEXT NOT NULL,
        "state" TEXT NOT NULL,
        "pincode" TEXT NOT NULL,
        "country" TEXT NOT NULL,
        "universityEmail" TEXT NOT NULL,
        "universityEmailPassword" TEXT NOT NULL,
        "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
        "updatedAt" TIMESTAMP(3) NOT NULL,
        CONSTRAINT "Teacher_pkey" PRIMARY KEY ("id")
    );

-- CreateIndex
CREATE UNIQUE INDEX "Teacher_phoneNumber_key" ON "Teacher" ("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "Teacher_email_key" ON "Teacher" ("email");

-- CreateIndex
CREATE UNIQUE INDEX "Teacher_universityEmail_key" ON "Teacher" ("universityEmail");

-- Statement 1
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Lana Harnwell',
        'MALE',
        '2003-10-29 00:00:00',
        '72496-61241',
        'lharnwell0@usatoday.com',
        'ST',
        'nZ8`HK~aM<Cidxyq',
        '80076 Schlimgen Drive',
        '782 Briar Crest Park',
        'Surat',
        'Uttarakhand',
        '246681',
        'IN',
        '7+@triplex.com',
        'nQ7=Q*~UST',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 2
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Adriena Cesconi',
        'MALE',
        '1927-03-25 00:00:00',
        '55197-78109',
        'acesconi2@unc.edu',
        'ST',
        'rX8@OCWSq+sPh"',
        '531 Caliangt Place',
        '8603 Erie Trail',
        'Chennai',
        'Rajasthan',
        '960792',
        'IN',
        'h+@triplex.com',
        'fX3$7)EC',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 3
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Emalee Cabbell',
        'MALE',
        '1910-05-10 00:00:00',
        '24786-73551',
        'ecabbell3@blogs.com',
        'OBC',
        'sQ5..~qN1&.8Ehq',
        '95191 Carpenter Center',
        '98207 Tony Drive',
        'Surat',
        'Sikkim',
        '890831',
        'IN',
        '6+@triplex.com',
        'pO9%''z+*?''''',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 4
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Adiana Petras',
        'MALE',
        '1911-08-05 00:00:00',
        '67099-31207',
        'apetras4@java.com',
        'OBC',
        'oD2"eDf*',
        '857 Stephen Road',
        '9048 Surrey Drive',
        'Mumbai',
        'Punjab',
        '416278',
        'IN',
        't+@triplex.com',
        'pO6|i>u{R%',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 5
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Vere Mendes',
        'FEMALE',
        '2017-12-07 00:00:00',
        '36919-34357',
        'vmendes5@yolasite.com',
        'OBC',
        'aE3,cIWdi',
        '96924 Johnson Court',
        '966 Ronald Regan Court',
        'Kolkata',
        'Maharashtra',
        '217193',
        'IN',
        'i+@triplex.com',
        'nW6~xed/',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 6
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Dew Drinkeld',
        'FEMALE',
        '1921-11-05 00:00:00',
        '00780-14692',
        'ddrinkeld6@mapquest.com',
        'ST',
        'uQ6"="/yYValw)SS',
        '5551 Basil Street',
        '528 Nobel Alley',
        'Bangalore',
        'Bihar',
        '665976',
        'IN',
        'S+@triplex.com',
        'tH9_DNO\xr2\5KZu',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 7
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Jennette Boak',
        'FEMALE',
        '2019-01-02 00:00:00',
        '47426-07752',
        'jboak7@slashdot.org',
        'SC',
        'vF8%l?6A9SZ"AWH',
        '42758 Troy Avenue',
        '670 Darwin Drive',
        'Ahmedabad',
        'West Bengal',
        '253513',
        'IN',
        '5+@triplex.com',
        'xM6<|rX~c',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 8
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Miles Ogilby',
        'MALE',
        '1953-08-03 00:00:00',
        '09387-34139',
        'mogilby8@time.com',
        'SC',
        'mJ6"CNovoIA',
        '71003 Jenna Avenue',
        '242 Caliangt Crossing',
        'Jaipur',
        'Tamil Nadu',
        '412300',
        'IN',
        '10+@triplex.com',
        'uT4.%u38i*l_4',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 9
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Maurits Penswick',
        'FEMALE',
        '1904-01-24 00:00:00',
        '37592-58342',
        'mpenswick9@csmonitor.com',
        'SC',
        'gT0=X1%h~&HSc',
        '34671 New Castle Circle',
        '888 Roxbury Road',
        'Hyderabad',
        'Punjab',
        '609414',
        'IN',
        'd+@triplex.com',
        'eX9#LibV$<''h',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 10
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Homerus Simoneau',
        'MALE',
        '1994-05-15 00:00:00',
        '85478-09975',
        'hsimoneaua@ezinearticles.com',
        'OBC',
        'pJ0.O9YzuR<=+O&%',
        '478 Park Meadow Court',
        '973 Norway Maple Avenue',
        'Surat',
        'Haryana',
        '496866',
        'IN',
        '8+@triplex.com',
        'mQ9''qiYgydW>#Li',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 11
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Lorilyn Langsbury',
        'MALE',
        '1928-03-14 00:00:00',
        '21327-24471',
        'llangsburyb@ow.ly',
        'ST',
        'lR8)P!OmJ?',
        '72454 Gulseth Pass',
        '88 Garrison Lane',
        'Ahmedabad',
        'Telangana',
        '341154',
        'IN',
        '4+@triplex.com',
        'tW2>e|9@',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 12
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Josephine Mawson',
        'FEMALE',
        '1904-11-11 00:00:00',
        '79636-87813',
        'jmawsonc@apple.com',
        'ST',
        'iG3)`d.oD',
        '29 Scott Park',
        '9 Anthes Way',
        'Surat',
        'Jharkhand',
        '115992',
        'IN',
        'eX9+@triplex.com',
        'dQ3=n|!<9"}Km"',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 13
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Christie Bullier',
        'FEMALE',
        '1987-11-29 00:00:00',
        '21747-45249',
        'cbullierd@wikimedia.org',
        'GENERAL',
        'wQ9\S6E.',
        '0994 Gale Hill',
        '521 Morningstar Pass',
        'Surat',
        'Andhra Pradesh',
        '040121',
        'IN',
        'Ks+@triplex.com',
        'zO2/*yVwA',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 14
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Dore Colliard',
        'FEMALE',
        '1981-04-23 00:00:00',
        '08770-86323',
        'dcolliarde@forbes.com',
        'GENERAL',
        'lB7?Cx,OzoOh684=',
        '61811 School Court',
        '776 Transport Plaza',
        'Ahmedabad',
        'Madhya Pradesh',
        '034081',
        'IN',
        'r+@triplex.com',
        'xV8#1#4@zUtV)W0O',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 15
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Brenda Johnigan',
        'FEMALE',
        '1912-06-09 00:00:00',
        '07347-49780',
        'bjohniganf@edublogs.org',
        'ST',
        'jO4&vaTJWC',
        '67 Ryan Street',
        '0818 Meadow Vale Street',
        'Jaipur',
        'Uttar Pradesh',
        '864169',
        'IN',
        '0+@triplex.com',
        'qP0#8Gv3Q"gt&*Ys',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 16
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Robinetta Valasek',
        'MALE',
        '1965-03-15 00:00:00',
        '46974-34328',
        'rvalasekg@nymag.com',
        'SC',
        'mI5%@v1}CJ<_qY61',
        '22 Roxbury Junction',
        '08391 Memorial Park',
        'Jaipur',
        'Madhya Pradesh',
        '621524',
        'IN',
        'B+@triplex.com',
        'zJ3$<&JMAB&',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 17
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Melisa Chessman',
        'MALE',
        '1991-09-19 00:00:00',
        '45050-56852',
        'mchessmanh@wordpress.org',
        'GENERAL',
        'yZ8~W@/)',
        '81057 Nancy Way',
        '75386 Fisk Park',
        'Delhi',
        'Assam',
        '479303',
        'IN',
        'P+@triplex.com',
        'aW3"NPo*!7',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 18
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Dinah Schankel',
        'MALE',
        '1908-11-11 00:00:00',
        '50267-49165',
        'dschankelj@so-net.ne.jp',
        'SC',
        'jQ9`fY$X?',
        '7485 Morrow Road',
        '93270 Union Circle',
        'Mumbai',
        'Goa',
        '656769',
        'IN',
        'w+@triplex.com',
        'oZ6_P.=A>)U@Jr%x',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 19
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Nealy Beacock',
        'MALE',
        '2011-12-03 00:00:00',
        '72330-46765',
        'nbeacockk@apache.org',
        'GENERAL',
        'wA6/5<v*zUa01|<I',
        '2048 Barby Hill',
        '4 Mitchell Parkway',
        'Ahmedabad',
        'Goa',
        '767356',
        'IN',
        '123x+@triplex.com',
        'rO9%zci02?',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 20
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Leticia Baldin',
        'FEMALE',
        '1977-02-08 00:00:00',
        '80665-22740',
        'lbaldinl@4shared.com',
        'GENERAL',
        'kY0.WOZNh!mXbN',
        '7 Farmco Lane',
        '67447 Everett Road',
        'Ahmedabad',
        'Punjab',
        '524080',
        'IN',
        '1+@triplex.com',
        'mE4.`TEMR!>v7',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 21
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Catlin Ozelton',
        'MALE',
        '2004-04-18 00:00:00',
        '98670-64211',
        'cozeltonm@scientificamerican.com',
        'OBC',
        'jA7(~ewHLckCkI.',
        '2166 Kedzie Street',
        '0 Gale Place',
        'Hyderabad',
        'Telangana',
        '641782',
        'IN',
        'D+@triplex.com',
        'sK5>LIGNVBG$8',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 22
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Jillana Lindstedt',
        'MALE',
        '1988-06-06 00:00:00',
        '60336-75910',
        'jlindstedtn@desdev.cn',
        'OBC',
        'gI4"tz+8',
        '842 Melvin Hill',
        '19689 Eliot Lane',
        'Bangalore',
        'Uttar Pradesh',
        '338730',
        'IN',
        'o+@triplex.com',
        'wQ1)On)y@',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

-- Statement 23
INSERT INTO
    "Teacher" (
        "id",
        "name",
        "gender",
        "dateOfBirth",
        "phoneNumber",
        "email",
        "category",
        "password",
        "permanentAddress",
        "currentAddress",
        "city",
        "state",
        "pincode",
        "country",
        "universityEmail",
        "universityEmailPassword",
        "createdAt",
        "updatedAt"
    )
VALUES
    (
        gen_random_uuid (),
        'Ruthanne Drinkale',
        'FEMALE',
        '2021-04-26 00:00:00',
        '13313-69228',
        'rdrinkaleo@ucoz.ru',
        'ST',
        'sW6!tb{pf(&E!zH',
        '90763 Grim Park',
        '0 Carberry Parkway',
        'Mumbai',
        'Jharkhand',
        '376658',
        'IN',
        'Kf+@triplex.com',
        'mO8@+<yL2gN',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );