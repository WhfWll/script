.class public final Lorg/codehaus/jackson/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final L_BILLION:J = 0x3b9aca00L

.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

.field public static final NASTY_SMALL_DOUBLE:Ljava/lang/String; = "2.2250738585072012e-308"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 17
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inLongRange(Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "numberStr"    # Ljava/lang/String;
    .param p1, "negative"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 175
    if-eqz p1, :cond_11

    sget-object v2, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 176
    .local v2, "cmpStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    .local v1, "cmpLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    .local v0, "actualLen":I
    if-ge v0, v1, :cond_14

    .line 188
    :cond_10
    :goto_10
    return v5

    .line 175
    .end local v0    # "actualLen":I
    .end local v1    # "cmpLen":I
    .end local v2    # "cmpStr":Ljava/lang/String;
    :cond_11
    sget-object v2, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_6

    .line 179
    .restart local v0    # "actualLen":I
    .restart local v1    # "cmpLen":I
    .restart local v2    # "cmpStr":Ljava/lang/String;
    :cond_14
    if-le v0, v1, :cond_18

    move v5, v6

    goto :goto_10

    .line 182
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v1, :cond_10

    .line 183
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int v3, v7, v8

    .line 184
    .local v3, "diff":I
    if-eqz v3, :cond_2b

    .line 185
    if-ltz v3, :cond_10

    move v5, v6

    goto :goto_10

    .line 182
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method public static final inLongRange([CIIZ)Z
    .registers 12
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "negative"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    if-eqz p3, :cond_d

    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 151
    .local v1, "cmpStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "cmpLen":I
    if-ge p2, v0, :cond_10

    .line 161
    :cond_c
    :goto_c
    return v4

    .line 150
    .end local v0    # "cmpLen":I
    .end local v1    # "cmpStr":Ljava/lang/String;
    :cond_d
    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_6

    .line 153
    .restart local v0    # "cmpLen":I
    .restart local v1    # "cmpStr":Ljava/lang/String;
    :cond_10
    if-le p2, v0, :cond_14

    move v4, v5

    goto :goto_c

    .line 155
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_c

    .line 156
    add-int v6, p1, v3

    aget-char v6, p0, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int v2, v6, v7

    .line 157
    .local v2, "diff":I
    if-eqz v2, :cond_27

    .line 158
    if-ltz v2, :cond_c

    move v4, v5

    goto :goto_c

    .line 155
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method public static parseAsDouble(Ljava/lang/String;D)D
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 278
    if-nez p0, :cond_3

    .line 289
    .end local p1    # "defaultValue":D
    :cond_2
    :goto_2
    return-wide p1

    .line 281
    .restart local p1    # "defaultValue":D
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    .local v0, "len":I
    if-eqz v0, :cond_2

    .line 287
    :try_start_d
    invoke-static {p0}, Lorg/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_12

    move-result-wide p1

    goto :goto_2

    .line 288
    :catch_12
    move-exception v1

    goto :goto_2
.end method

.method public static parseAsInt(Ljava/lang/String;I)I
    .registers 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 196
    if-nez p0, :cond_3

    .line 229
    .end local p1    # "defaultValue":I
    :cond_2
    :goto_2
    return p1

    .line 199
    .restart local p1    # "defaultValue":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 201
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "i":I
    if-ge v2, v3, :cond_22

    .line 207
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_36

    .line 209
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .end local v0    # "c":C
    :cond_22
    :goto_22
    if-ge v2, v3, :cond_42

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_30

    const/16 v4, 0x30

    if-ge v0, v4, :cond_3f

    .line 220
    :cond_30
    :try_start_30
    invoke-static {p0}, Lorg/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_33} :catch_3d

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_2

    .line 211
    :cond_36
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_22

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 221
    :catch_3d
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 215
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 227
    .end local v0    # "c":C
    :cond_42
    :try_start_42
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_45} :catch_47

    move-result p1

    goto :goto_2

    .line 228
    :catch_47
    move-exception v4

    goto :goto_2
.end method

.method public static parseAsLong(Ljava/lang/String;J)J
    .registers 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 237
    if-nez p0, :cond_3

    .line 270
    .end local p1    # "defaultValue":J
    :cond_2
    :goto_2
    return-wide p1

    .line 240
    .restart local p1    # "defaultValue":J
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 242
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, "i":I
    if-ge v2, v3, :cond_22

    .line 248
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 249
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_36

    .line 250
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 256
    .end local v0    # "c":C
    :cond_22
    :goto_22
    if-ge v2, v3, :cond_42

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_30

    const/16 v4, 0x30

    if-ge v0, v4, :cond_3f

    .line 261
    :cond_30
    :try_start_30
    invoke-static {p0}, Lorg/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_33} :catch_3d

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_2

    .line 252
    :cond_36
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_22

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 262
    :catch_3d
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 256
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 268
    .end local v0    # "c":C
    :cond_42
    :try_start_42
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_45} :catch_47

    move-result-wide p1

    goto :goto_2

    .line 269
    :catch_47
    move-exception v4

    goto :goto_2
.end method

.method public static final parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "numStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 299
    const-wide/high16 v0, 0x10000000000000L

    .line 301
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_a
.end method

.method public static final parseInt(Ljava/lang/String;)I
    .registers 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    .local v0, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, "length":I
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_13

    move v2, v6

    .line 73
    .local v2, "negative":Z
    :cond_13
    const/4 v4, 0x1

    .line 76
    .local v4, "offset":I
    if-eqz v2, :cond_31

    .line 77
    if-eq v1, v6, :cond_1c

    const/16 v6, 0xa

    if-le v1, v6, :cond_21

    .line 78
    :cond_1c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 114
    :cond_20
    :goto_20
    return v3

    .line 80
    :cond_21
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    :goto_27
    if-gt v0, v9, :cond_2b

    if-ge v0, v8, :cond_3a

    .line 87
    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_20

    .line 82
    :cond_31
    const/16 v6, 0x9

    if-le v1, v6, :cond_8b

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_20

    .line 89
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_3a
    add-int/lit8 v3, v0, -0x30

    .line 90
    .local v3, "num":I
    if-ge v5, v1, :cond_86

    .line 91
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    if-gt v0, v9, :cond_48

    if-ge v0, v8, :cond_4d

    .line 93
    :cond_48
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_20

    .line 95
    :cond_4d
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 96
    if-ge v4, v1, :cond_87

    .line 97
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    if-gt v0, v9, :cond_5f

    if-ge v0, v8, :cond_65

    .line 99
    :cond_5f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3    # "num":I
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_20

    .line 101
    .end local v4    # "offset":I
    .restart local v3    # "num":I
    .restart local v5    # "offset":I
    :cond_65
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 103
    if-ge v5, v1, :cond_86

    :cond_6d
    move v4, v5

    .line 105
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    if-gt v0, v9, :cond_78

    if-ge v0, v8, :cond_7e

    .line 107
    :cond_78
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3    # "num":I
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_20

    .line 109
    .end local v4    # "offset":I
    .restart local v3    # "num":I
    .restart local v5    # "offset":I
    :cond_7e
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 110
    if-lt v5, v1, :cond_6d

    :cond_86
    move v4, v5

    .line 114
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_87
    if-eqz v2, :cond_20

    neg-int v3, v3

    goto :goto_20

    .end local v3    # "num":I
    :cond_8b
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_27
.end method

.method public static final parseInt([CII)I
    .registers 6
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 28
    aget-char v1, p0, p1

    add-int/lit8 v0, v1, -0x30

    .line 29
    .local v0, "num":I
    add-int/2addr p2, p1

    .line 31
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 32
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 33
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 34
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 35
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 36
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 37
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 38
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 39
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 40
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 41
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 42
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 43
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 44
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 45
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 46
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 55
    :cond_65
    return v0
.end method

.method public static final parseLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_e

    .line 132
    invoke-static {p0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 135
    :goto_d
    return-wide v2

    :cond_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_d
.end method

.method public static final parseLong([CII)J
    .registers 11
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 120
    add-int/lit8 v0, p2, -0x9

    .line 121
    .local v0, "len1":I
    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0x3b9aca00

    mul-long v2, v4, v6

    .line 122
    .local v2, "val":J
    add-int v1, p1, v0

    const/16 v4, 0x9

    invoke-static {p0, v1, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v2

    return-wide v4
.end method
