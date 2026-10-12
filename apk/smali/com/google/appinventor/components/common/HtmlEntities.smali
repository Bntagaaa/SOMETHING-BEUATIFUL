.class public Lcom/google/appinventor/components/common/HtmlEntities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    const-string v0, "&(#?[0-9a-zA-Z]+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/common/HtmlEntities;->a:Ljava/util/regex/Pattern;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/HtmlEntities;->b:Ljava/util/HashMap;

    const/16 v1, 0xc0

    .line 29
    const-string v2, "Agrave"

    const/16 v3, 0xe0

    .line 30
    const-string v4, "agrave"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc1

    .line 31
    const-string v2, "Aacute"

    const/16 v3, 0xe1

    .line 32
    const-string v4, "aacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc2

    .line 33
    const-string v2, "Acirc"

    const/16 v3, 0xe2

    .line 34
    const-string v4, "acirc"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc3

    .line 35
    const-string v2, "Atilde"

    const/16 v3, 0xe3

    .line 36
    const-string v4, "atilde"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc4

    .line 37
    const-string v2, "Auml"

    const/16 v3, 0xe4

    .line 38
    const-string v4, "auml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc5

    .line 39
    const-string v2, "Aring"

    const/16 v3, 0xe5

    .line 40
    const-string v4, "aring"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc6

    .line 41
    const-string v2, "AElig"

    const/16 v3, 0xe6

    .line 42
    const-string v4, "aelig"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc7

    .line 43
    const-string v2, "Ccedil"

    const/16 v3, 0xe7

    .line 44
    const-string v4, "ccedil"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc8

    .line 45
    const-string v2, "Egrave"

    const/16 v3, 0xe8

    .line 46
    const-string v4, "egrave"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xc9

    .line 47
    const-string v2, "Eacute"

    const/16 v3, 0xe9

    .line 48
    const-string v4, "eacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xca

    .line 49
    const-string v2, "Ecirc"

    const/16 v3, 0xea

    .line 50
    const-string v4, "ecirc"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xcb

    .line 51
    const-string v2, "Euml"

    const/16 v3, 0xeb

    .line 52
    const-string v4, "euml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xcc

    .line 53
    const-string v2, "Igrave"

    const/16 v3, 0xec

    .line 54
    const-string v4, "igrave"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xcd

    .line 55
    const-string v2, "Iacute"

    const/16 v3, 0xed

    .line 56
    const-string v4, "iacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xce

    .line 57
    const-string v2, "Icirc"

    const/16 v3, 0xee

    .line 58
    const-string v4, "icirc"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xcf

    .line 59
    const-string v2, "Iuml"

    const/16 v3, 0xef

    .line 60
    const-string v4, "iuml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd0

    .line 61
    const-string v2, "ETH"

    const/16 v3, 0xf0

    .line 62
    const-string v4, "eth"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd1

    .line 63
    const-string v2, "Ntilde"

    const/16 v3, 0xf1

    .line 64
    const-string v4, "ntilde"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd2

    .line 65
    const-string v2, "Ograve"

    const/16 v3, 0xf2

    .line 66
    const-string v4, "ograve"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd3

    .line 67
    const-string v2, "Oacute"

    const/16 v3, 0xf3

    .line 68
    const-string v4, "oacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd4

    .line 69
    const-string v2, "Ocirc"

    const/16 v3, 0xf4

    .line 70
    const-string v4, "ocirc"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd5

    .line 71
    const-string v2, "Otilde"

    const/16 v3, 0xf5

    .line 72
    const-string v4, "otilde"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd6

    .line 73
    const-string v2, "Ouml"

    const/16 v3, 0xf6

    .line 74
    const-string v4, "ouml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd8

    .line 75
    const-string v2, "Oslash"

    const/16 v3, 0xf8

    .line 76
    const-string v4, "oslash"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd9

    .line 77
    const-string v2, "Ugrave"

    const/16 v3, 0xf9

    .line 78
    const-string v4, "ugrave"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xda

    .line 79
    const-string v2, "Uacute"

    const/16 v3, 0xfa

    .line 80
    const-string v4, "uacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xdb

    .line 81
    const-string v2, "Ucirc"

    const/16 v3, 0xfb

    .line 82
    const-string v4, "ucirc"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xdc

    .line 83
    const-string v2, "Uuml"

    const/16 v3, 0xfc

    .line 84
    const-string v4, "uuml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xdd

    .line 85
    const-string v2, "Yacute"

    const/16 v3, 0xfd

    .line 86
    const-string v4, "yacute"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xde

    .line 87
    const-string v2, "THORN"

    const/16 v3, 0xfe

    .line 88
    const-string v4, "thorn"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xdf

    .line 89
    const-string v2, "szlig"

    const/16 v3, 0xff

    .line 90
    const-string v4, "yuml"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x178

    .line 91
    const-string v2, "Yuml"

    const/16 v3, 0x152

    .line 92
    const-string v4, "OElig"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x153

    .line 93
    const-string v2, "oelig"

    const/16 v3, 0x160

    .line 94
    const-string v4, "Scaron"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x161

    .line 95
    const-string v2, "scaron"

    const/16 v3, 0x391

    .line 96
    const-string v4, "Alpha"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x392

    .line 97
    const-string v2, "Beta"

    const/16 v3, 0x393

    .line 98
    const-string v4, "Gamma"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x394

    .line 99
    const-string v2, "Delta"

    const/16 v3, 0x395

    .line 100
    const-string v4, "Epsilon"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x396

    .line 101
    const-string v2, "Zeta"

    const/16 v3, 0x397

    .line 102
    const-string v4, "Eta"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x398

    .line 103
    const-string v2, "Theta"

    const/16 v3, 0x399

    .line 104
    const-string v4, "Iota"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x39a

    .line 105
    const-string v2, "Kappa"

    const/16 v3, 0x39b

    .line 106
    const-string v4, "Lambda"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x39c

    .line 107
    const-string v2, "Mu"

    const/16 v3, 0x39d

    .line 108
    const-string v4, "Nu"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x39e

    .line 109
    const-string v2, "Xi"

    const/16 v3, 0x39f

    .line 110
    const-string v4, "Omicron"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3a0

    .line 111
    const-string v2, "Pi"

    const/16 v3, 0x3a1

    .line 112
    const-string v4, "Rho"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3a3

    .line 113
    const-string v2, "Sigma"

    const/16 v3, 0x3a4

    .line 114
    const-string v4, "Tau"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3a5

    .line 115
    const-string v2, "Upsilon"

    const/16 v3, 0x3a6

    .line 116
    const-string v4, "Phi"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3a7

    .line 117
    const-string v2, "Chi"

    const/16 v3, 0x3a8

    .line 118
    const-string v4, "Psi"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3a9

    .line 119
    const-string v2, "Omega"

    const/16 v3, 0x3b1

    .line 120
    const-string v4, "alpha"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3b2

    .line 121
    const-string v2, "beta"

    const/16 v3, 0x3b3

    .line 122
    const-string v4, "gamma"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3b4

    .line 123
    const-string v2, "delta"

    const/16 v3, 0x3b5

    .line 124
    const-string v4, "epsilon"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3b6

    .line 125
    const-string v2, "zeta"

    const/16 v3, 0x3b7

    .line 126
    const-string v4, "eta"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3b8

    .line 127
    const-string v2, "theta"

    const/16 v3, 0x3b9

    .line 128
    const-string v4, "iota"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3ba

    .line 129
    const-string v2, "kappa"

    const/16 v3, 0x3bb

    .line 130
    const-string v4, "lambda"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3bc

    .line 131
    const-string v2, "mu"

    const/16 v3, 0x3bd

    .line 132
    const-string v4, "nu"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3be

    .line 133
    const-string v2, "xi"

    const/16 v3, 0x3bf

    .line 134
    const-string v4, "omicron"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3c0

    .line 135
    const-string v2, "pi"

    const/16 v3, 0x3c1

    .line 136
    const-string v4, "rho"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3c2

    .line 137
    const-string v2, "sigmaf"

    const/16 v3, 0x3c3

    .line 138
    const-string v4, "sigma"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3c4

    .line 139
    const-string v2, "tau"

    const/16 v3, 0x3c5

    .line 140
    const-string v4, "upsilon"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3c6

    .line 141
    const-string v2, "phi"

    const/16 v3, 0x3c7

    .line 142
    const-string v4, "chi"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3c8

    .line 143
    const-string v2, "psi"

    const/16 v3, 0x3c9

    .line 144
    const-string v4, "omega"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3d1

    .line 145
    const-string v2, "thetasym"

    const/16 v3, 0x3d2

    .line 146
    const-string v4, "upsih"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3d6

    .line 147
    const-string v2, "piv"

    const/16 v3, 0xa1

    .line 149
    const-string v4, "iexcl"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xa2

    .line 150
    const-string v2, "cent"

    const/16 v3, 0xa3

    .line 151
    const-string v4, "pound"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xa4

    .line 152
    const-string v2, "curren"

    const/16 v3, 0xa5

    .line 153
    const-string v4, "yen"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xa6

    .line 154
    const-string v2, "brvbar"

    const/16 v3, 0xa7

    .line 155
    const-string v4, "sect"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xa8

    .line 156
    const-string v2, "uml"

    const/16 v3, 0xa9

    .line 157
    const-string v4, "copy"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xaa

    .line 158
    const-string v2, "ordf"

    const/16 v3, 0xab

    .line 159
    const-string v4, "laquo"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xac

    .line 160
    const-string v2, "not"

    const/16 v3, 0xad

    .line 161
    const-string v4, "shy"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xae

    .line 162
    const-string v2, "reg"

    const/16 v3, 0xaf

    .line 163
    const-string v4, "macr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xb0

    .line 164
    const-string v2, "deg"

    const/16 v3, 0xb1

    .line 165
    const-string v4, "plusmn"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xb2

    .line 166
    const-string v2, "sup2"

    const/16 v3, 0xb3

    .line 167
    const-string v4, "sup3"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xb4

    .line 168
    const-string v2, "acute"

    const/16 v3, 0xb5

    .line 169
    const-string v4, "micro"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xb6

    .line 170
    const-string v2, "para"

    const/16 v3, 0xb7

    .line 171
    const-string v4, "middot"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xb8

    .line 172
    const-string v2, "cedil"

    const/16 v3, 0xb9

    .line 173
    const-string v4, "sup1"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xba

    .line 174
    const-string v2, "ordm"

    const/16 v3, 0xbb

    .line 175
    const-string v4, "raquo"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xbc

    .line 176
    const-string v2, "frac14"

    const/16 v3, 0xbd

    .line 177
    const-string v4, "frac12"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xbe

    .line 178
    const-string v2, "frac34"

    const/16 v3, 0xbf

    .line 179
    const-string v4, "iquest"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0xd7

    .line 180
    const-string v2, "times"

    const/16 v3, 0xf7

    .line 181
    const-string v4, "divide"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x192

    .line 182
    const-string v2, "fnof"

    const/16 v3, 0x2c6

    .line 183
    const-string v4, "circ"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2dc

    .line 184
    const-string v2, "tilde"

    const/16 v3, 0x200e

    .line 185
    const-string v4, "lrm"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x200f

    .line 186
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "rlm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2013

    .line 187
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ndash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v2, "endash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2014

    .line 189
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "mdash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "emdash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2018

    .line 191
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "lsquo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2019

    .line 192
    const-string v2, "rsquo"

    const/16 v3, 0x201a

    .line 193
    const-string v4, "sbquo"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x201c

    .line 194
    const-string v2, "ldquo"

    const/16 v3, 0x201d

    .line 195
    const-string v4, "rdquo"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x201e

    .line 196
    const-string v2, "bdquo"

    const/16 v3, 0x2020

    .line 197
    const-string v4, "dagger"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2021

    .line 198
    const-string v2, "Dagger"

    const/16 v3, 0x2022

    .line 199
    const-string v4, "bull"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2026

    .line 200
    const-string v2, "hellip"

    const/16 v3, 0x2030

    .line 201
    const-string v4, "permil"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2032

    .line 202
    const-string v2, "prime"

    const/16 v3, 0x2033

    .line 203
    const-string v4, "Prime"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2039

    .line 204
    const-string v2, "lsaquo"

    const/16 v3, 0x203a

    .line 205
    const-string v4, "rsaquo"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x203e

    .line 206
    const-string v2, "oline"

    const/16 v3, 0x2044

    .line 207
    const-string v4, "frasl"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x20ac

    .line 208
    const-string v2, "euro"

    const/16 v3, 0x2111

    .line 209
    const-string v4, "image"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2118

    .line 210
    const-string v2, "weierp"

    const/16 v3, 0x211c

    .line 211
    const-string v4, "real"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2122

    .line 212
    const-string v2, "trade"

    const/16 v3, 0x2135

    .line 213
    const-string v4, "alefsym"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2190

    .line 214
    const-string v2, "larr"

    const/16 v3, 0x2191

    .line 215
    const-string v4, "uarr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2192

    .line 216
    const-string v2, "rarr"

    const/16 v3, 0x2193

    .line 217
    const-string v4, "darr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2194

    .line 218
    const-string v2, "harr"

    const/16 v3, 0x21b5

    .line 219
    const-string v4, "crarr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x21d0

    .line 220
    const-string v2, "lArr"

    const/16 v3, 0x21d1

    .line 221
    const-string v4, "uArr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x21d2

    .line 222
    const-string v2, "rArr"

    const/16 v3, 0x21d3

    .line 223
    const-string v4, "dArr"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x21d4

    .line 224
    const-string v2, "hArr"

    const/16 v3, 0x2200

    .line 225
    const-string v4, "forall"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2202

    .line 226
    const-string v2, "part"

    const/16 v3, 0x2203

    .line 227
    const-string v4, "exist"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2205

    .line 228
    const-string v2, "empty"

    const/16 v3, 0x2207

    .line 229
    const-string v4, "nabla"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2208

    .line 230
    const-string v2, "isin"

    const/16 v3, 0x2209

    .line 231
    const-string v4, "notin"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x220b

    .line 232
    const-string v2, "ni"

    const/16 v3, 0x220f

    .line 233
    const-string v4, "prod"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2211

    .line 234
    const-string v2, "sum"

    const/16 v3, 0x2212

    .line 235
    const-string v4, "minus"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2217

    .line 236
    const-string v2, "lowast"

    const/16 v3, 0x221a

    .line 237
    const-string v4, "radic"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x221d

    .line 238
    const-string v2, "prop"

    const/16 v3, 0x221e

    .line 239
    const-string v4, "infin"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2220

    .line 240
    const-string v2, "ang"

    const/16 v3, 0x2227

    .line 241
    const-string v4, "and"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2228

    .line 242
    const-string v2, "or"

    const/16 v3, 0x2229

    .line 243
    const-string v4, "cap"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x222a

    .line 244
    const-string v2, "cup"

    const/16 v3, 0x222b

    .line 245
    const-string v4, "int"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2234

    .line 246
    const-string v2, "there4"

    const/16 v3, 0x223c

    .line 247
    const-string v4, "sim"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2245

    .line 248
    const-string v2, "cong"

    const/16 v3, 0x2248

    .line 249
    const-string v4, "asymp"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2260

    .line 250
    const-string v2, "ne"

    const/16 v3, 0x2261

    .line 251
    const-string v4, "equiv"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2264

    .line 252
    const-string v2, "le"

    const/16 v3, 0x2265

    .line 253
    const-string v4, "ge"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2282

    .line 254
    const-string v2, "sub"

    const/16 v3, 0x2283

    .line 255
    const-string v4, "sup"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2284

    .line 256
    const-string v2, "nsub"

    const/16 v3, 0x2286

    .line 257
    const-string v4, "sube"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2287

    .line 258
    const-string v2, "supe"

    const/16 v3, 0x2295

    .line 259
    const-string v4, "oplus"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2297

    .line 260
    const-string v2, "otimes"

    const/16 v3, 0x22a5

    .line 261
    const-string v4, "perp"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x22c5

    .line 262
    const-string v2, "sdot"

    const/16 v3, 0x2308

    .line 263
    const-string v4, "lceil"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2309

    .line 264
    const-string v2, "rceil"

    const/16 v3, 0x230a

    .line 265
    const-string v4, "lfloor"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x230b

    .line 266
    const-string v2, "rfloor"

    const/16 v3, 0x2329

    .line 267
    const-string v4, "lang"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x232a

    .line 268
    const-string v2, "rang"

    const/16 v3, 0x25ca

    .line 269
    const-string v4, "loz"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2660

    .line 270
    const-string v2, "spades"

    const/16 v3, 0x2663

    .line 271
    const-string v4, "clubs"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2665

    .line 272
    const-string v2, "hearts"

    const/16 v3, 0x2666

    .line 273
    const-string v4, "diams"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x3e

    .line 275
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "GT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3c

    .line 277
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "LT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22

    .line 279
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v2, "QUOT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x26

    .line 281
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v2, "AMP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x27

    .line 283
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    .line 285
    const-string v2, "nbsp"

    const/16 v3, 0x2002

    .line 286
    const-string v4, "ensp"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x2003

    .line 287
    const-string v2, "emsp"

    const/16 v3, 0x2009

    .line 288
    const-string v4, "thinsp"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    const/16 v1, 0x200c

    .line 289
    const-string v2, "zwnj"

    const/16 v3, 0x200d

    .line 291
    const-string v4, "zwj"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->s(CLjava/util/HashMap;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x26

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    sget-object v1, Lcom/google/appinventor/components/common/HtmlEntities;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 328
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 330
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    const-string v5, "#x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v3, 0x2

    .line 335
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 337
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hex number is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v4, 0x10

    .line 338
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    .line 339
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 343
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    .line 348
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 353
    :cond_3
    sget-object v3, Lcom/google/appinventor/components/common/HtmlEntities;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Character;

    :goto_1
    if-eqz v6, :cond_1

    .line 357
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 363
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static toCharacter(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    .line 303
    sget-object v0, Lcom/google/appinventor/components/common/HtmlEntities;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0
.end method
