.class synthetic Lcn/dbox/core/f/b$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I

.field static final synthetic g:[I

.field static final synthetic h:[I

.field static final synthetic i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 801
    invoke-static {}, Lcn/dbox/core/b$o;->values()[Lcn/dbox/core/b$o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->i:[I

    :try_start_9
    sget-object v0, Lcn/dbox/core/f/b$1;->i:[I

    sget-object v1, Lcn/dbox/core/b$o;->b:Lcn/dbox/core/b$o;

    invoke-virtual {v1}, Lcn/dbox/core/b$o;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_207

    :goto_14
    :try_start_14
    sget-object v0, Lcn/dbox/core/f/b$1;->i:[I

    sget-object v1, Lcn/dbox/core/b$o;->c:Lcn/dbox/core/b$o;

    invoke-virtual {v1}, Lcn/dbox/core/b$o;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_204

    :goto_1f
    :try_start_1f
    sget-object v0, Lcn/dbox/core/f/b$1;->i:[I

    sget-object v1, Lcn/dbox/core/b$o;->d:Lcn/dbox/core/b$o;

    invoke-virtual {v1}, Lcn/dbox/core/b$o;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_201

    :goto_2a
    :try_start_2a
    sget-object v0, Lcn/dbox/core/f/b$1;->i:[I

    sget-object v1, Lcn/dbox/core/b$o;->e:Lcn/dbox/core/b$o;

    invoke-virtual {v1}, Lcn/dbox/core/b$o;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1fe

    .line 764
    :goto_35
    invoke-static {}, Lcn/dbox/core/b$i;->values()[Lcn/dbox/core/b$i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->h:[I

    :try_start_3e
    sget-object v0, Lcn/dbox/core/f/b$1;->h:[I

    sget-object v1, Lcn/dbox/core/b$i;->b:Lcn/dbox/core/b$i;

    invoke-virtual {v1}, Lcn/dbox/core/b$i;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_1fb

    :goto_49
    :try_start_49
    sget-object v0, Lcn/dbox/core/f/b$1;->h:[I

    sget-object v1, Lcn/dbox/core/b$i;->c:Lcn/dbox/core/b$i;

    invoke-virtual {v1}, Lcn/dbox/core/b$i;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1f8

    :goto_54
    :try_start_54
    sget-object v0, Lcn/dbox/core/f/b$1;->h:[I

    sget-object v1, Lcn/dbox/core/b$i;->d:Lcn/dbox/core/b$i;

    invoke-virtual {v1}, Lcn/dbox/core/b$i;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_1f5

    :goto_5f
    :try_start_5f
    sget-object v0, Lcn/dbox/core/f/b$1;->h:[I

    sget-object v1, Lcn/dbox/core/b$i;->e:Lcn/dbox/core/b$i;

    invoke-virtual {v1}, Lcn/dbox/core/b$i;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_1f2

    .line 726
    :goto_6a
    invoke-static {}, Lcn/dbox/core/b$g;->values()[Lcn/dbox/core/b$g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->g:[I

    :try_start_73
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->b:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_1ef

    :goto_7e
    :try_start_7e
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->c:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_1ec

    :goto_89
    :try_start_89
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->d:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_1e9

    :goto_94
    :try_start_94
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->e:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_1e6

    :goto_9f
    :try_start_9f
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->f:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_1e3

    :goto_aa
    :try_start_aa
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->g:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_1e0

    :goto_b5
    :try_start_b5
    sget-object v0, Lcn/dbox/core/f/b$1;->g:[I

    sget-object v1, Lcn/dbox/core/b$g;->h:Lcn/dbox/core/b$g;

    invoke-virtual {v1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_1dd

    .line 613
    :goto_c0
    invoke-static {}, Lcn/dbox/core/b$d;->values()[Lcn/dbox/core/b$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->f:[I

    :try_start_c9
    sget-object v0, Lcn/dbox/core/f/b$1;->f:[I

    sget-object v1, Lcn/dbox/core/b$d;->b:Lcn/dbox/core/b$d;

    invoke-virtual {v1}, Lcn/dbox/core/b$d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d4} :catch_1da

    :goto_d4
    :try_start_d4
    sget-object v0, Lcn/dbox/core/f/b$1;->f:[I

    sget-object v1, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    invoke-virtual {v1}, Lcn/dbox/core/b$d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_df} :catch_1d7

    :goto_df
    :try_start_df
    sget-object v0, Lcn/dbox/core/f/b$1;->f:[I

    sget-object v1, Lcn/dbox/core/b$d;->d:Lcn/dbox/core/b$d;

    invoke-virtual {v1}, Lcn/dbox/core/b$d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_1d4

    :goto_ea
    :try_start_ea
    sget-object v0, Lcn/dbox/core/f/b$1;->f:[I

    sget-object v1, Lcn/dbox/core/b$d;->e:Lcn/dbox/core/b$d;

    invoke-virtual {v1}, Lcn/dbox/core/b$d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f5} :catch_1d1

    .line 458
    :goto_f5
    invoke-static {}, Lcn/dbox/core/b$b;->values()[Lcn/dbox/core/b$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->e:[I

    :try_start_fe
    sget-object v0, Lcn/dbox/core/f/b$1;->e:[I

    sget-object v1, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    invoke-virtual {v1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_109} :catch_1ce

    :goto_109
    :try_start_109
    sget-object v0, Lcn/dbox/core/f/b$1;->e:[I

    sget-object v1, Lcn/dbox/core/b$b;->c:Lcn/dbox/core/b$b;

    invoke-virtual {v1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_114} :catch_1cb

    :goto_114
    :try_start_114
    sget-object v0, Lcn/dbox/core/f/b$1;->e:[I

    sget-object v1, Lcn/dbox/core/b$b;->d:Lcn/dbox/core/b$b;

    invoke-virtual {v1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11f} :catch_1c8

    :goto_11f
    :try_start_11f
    sget-object v0, Lcn/dbox/core/f/b$1;->e:[I

    sget-object v1, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    invoke-virtual {v1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_12a} :catch_1c5

    :goto_12a
    :try_start_12a
    sget-object v0, Lcn/dbox/core/f/b$1;->e:[I

    sget-object v1, Lcn/dbox/core/b$b;->f:Lcn/dbox/core/b$b;

    invoke-virtual {v1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_135} :catch_1c2

    .line 399
    :goto_135
    invoke-static {}, Lcn/dbox/core/b$e;->values()[Lcn/dbox/core/b$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->d:[I

    :try_start_13e
    sget-object v0, Lcn/dbox/core/f/b$1;->d:[I

    sget-object v1, Lcn/dbox/core/b$e;->b:Lcn/dbox/core/b$e;

    invoke-virtual {v1}, Lcn/dbox/core/b$e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_149
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13e .. :try_end_149} :catch_1c0

    :goto_149
    :try_start_149
    sget-object v0, Lcn/dbox/core/f/b$1;->d:[I

    sget-object v1, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    invoke-virtual {v1}, Lcn/dbox/core/b$e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_149 .. :try_end_154} :catch_1be

    .line 364
    :goto_154
    invoke-static {}, Lcn/dbox/core/b$f;->values()[Lcn/dbox/core/b$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->c:[I

    :try_start_15d
    sget-object v0, Lcn/dbox/core/f/b$1;->c:[I

    sget-object v1, Lcn/dbox/core/b$f;->b:Lcn/dbox/core/b$f;

    invoke-virtual {v1}, Lcn/dbox/core/b$f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15d .. :try_end_168} :catch_1bc

    :goto_168
    :try_start_168
    sget-object v0, Lcn/dbox/core/f/b$1;->c:[I

    sget-object v1, Lcn/dbox/core/b$f;->c:Lcn/dbox/core/b$f;

    invoke-virtual {v1}, Lcn/dbox/core/b$f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_173
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_173} :catch_1ba

    .line 330
    :goto_173
    invoke-static {}, Lcn/dbox/core/b$c;->values()[Lcn/dbox/core/b$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->b:[I

    :try_start_17c
    sget-object v0, Lcn/dbox/core/f/b$1;->b:[I

    sget-object v1, Lcn/dbox/core/b$c;->b:Lcn/dbox/core/b$c;

    invoke-virtual {v1}, Lcn/dbox/core/b$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_187
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_187} :catch_1b8

    .line 300
    :goto_187
    invoke-static {}, Lcn/dbox/core/bean/Entrance$EntryReportType;->values()[Lcn/dbox/core/bean/Entrance$EntryReportType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dbox/core/f/b$1;->a:[I

    :try_start_190
    sget-object v0, Lcn/dbox/core/f/b$1;->a:[I

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_IMP:Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-virtual {v1}, Lcn/dbox/core/bean/Entrance$EntryReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_190 .. :try_end_19b} :catch_1b6

    :goto_19b
    :try_start_19b
    sget-object v0, Lcn/dbox/core/f/b$1;->a:[I

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_CLK:Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-virtual {v1}, Lcn/dbox/core/bean/Entrance$EntryReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19b .. :try_end_1a6} :catch_1b4

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcn/dbox/core/f/b$1;->a:[I

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->PRESENTED:Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-virtual {v1}, Lcn/dbox/core/bean/Entrance$EntryReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b1} :catch_1b2

    :goto_1b1
    return-void

    :catch_1b2
    move-exception v0

    goto :goto_1b1

    :catch_1b4
    move-exception v0

    goto :goto_1a6

    :catch_1b6
    move-exception v0

    goto :goto_19b

    .line 330
    :catch_1b8
    move-exception v0

    goto :goto_187

    .line 364
    :catch_1ba
    move-exception v0

    goto :goto_173

    :catch_1bc
    move-exception v0

    goto :goto_168

    .line 399
    :catch_1be
    move-exception v0

    goto :goto_154

    :catch_1c0
    move-exception v0

    goto :goto_149

    .line 458
    :catch_1c2
    move-exception v0

    goto/16 :goto_135

    :catch_1c5
    move-exception v0

    goto/16 :goto_12a

    :catch_1c8
    move-exception v0

    goto/16 :goto_11f

    :catch_1cb
    move-exception v0

    goto/16 :goto_114

    :catch_1ce
    move-exception v0

    goto/16 :goto_109

    .line 613
    :catch_1d1
    move-exception v0

    goto/16 :goto_f5

    :catch_1d4
    move-exception v0

    goto/16 :goto_ea

    :catch_1d7
    move-exception v0

    goto/16 :goto_df

    :catch_1da
    move-exception v0

    goto/16 :goto_d4

    .line 726
    :catch_1dd
    move-exception v0

    goto/16 :goto_c0

    :catch_1e0
    move-exception v0

    goto/16 :goto_b5

    :catch_1e3
    move-exception v0

    goto/16 :goto_aa

    :catch_1e6
    move-exception v0

    goto/16 :goto_9f

    :catch_1e9
    move-exception v0

    goto/16 :goto_94

    :catch_1ec
    move-exception v0

    goto/16 :goto_89

    :catch_1ef
    move-exception v0

    goto/16 :goto_7e

    .line 764
    :catch_1f2
    move-exception v0

    goto/16 :goto_6a

    :catch_1f5
    move-exception v0

    goto/16 :goto_5f

    :catch_1f8
    move-exception v0

    goto/16 :goto_54

    :catch_1fb
    move-exception v0

    goto/16 :goto_49

    .line 801
    :catch_1fe
    move-exception v0

    goto/16 :goto_35

    :catch_201
    move-exception v0

    goto/16 :goto_2a

    :catch_204
    move-exception v0

    goto/16 :goto_1f

    :catch_207
    move-exception v0

    goto/16 :goto_14
.end method
