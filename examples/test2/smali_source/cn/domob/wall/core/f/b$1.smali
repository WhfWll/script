.class synthetic Lcn/domob/wall/core/f/b$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 559
    invoke-static {}, Lcn/domob/wall/core/DService$EWallReportType;->values()[Lcn/domob/wall/core/DService$EWallReportType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    :try_start_9
    sget-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1b2

    :goto_14
    :try_start_14
    sget-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1af

    :goto_1f
    :try_start_1f
    sget-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_REQ:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1ac

    :goto_2a
    :try_start_2a
    sget-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1a9

    :goto_35
    :try_start_35
    sget-object v0, Lcn/domob/wall/core/f/b$1;->f:[I

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1a6

    .line 416
    :goto_40
    invoke-static {}, Lcn/domob/wall/core/f/b$k;->values()[Lcn/domob/wall/core/f/b$k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->e:[I

    :try_start_49
    sget-object v0, Lcn/domob/wall/core/f/b$1;->e:[I

    sget-object v1, Lcn/domob/wall/core/f/b$k;->b:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1a3

    :goto_54
    :try_start_54
    sget-object v0, Lcn/domob/wall/core/f/b$1;->e:[I

    sget-object v1, Lcn/domob/wall/core/f/b$k;->c:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$k;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_1a0

    :goto_5f
    :try_start_5f
    sget-object v0, Lcn/domob/wall/core/f/b$1;->e:[I

    sget-object v1, Lcn/domob/wall/core/f/b$k;->d:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$k;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_19d

    :goto_6a
    :try_start_6a
    sget-object v0, Lcn/domob/wall/core/f/b$1;->e:[I

    sget-object v1, Lcn/domob/wall/core/f/b$k;->e:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$k;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_19a

    .line 378
    :goto_75
    invoke-static {}, Lcn/domob/wall/core/f/b$m;->values()[Lcn/domob/wall/core/f/b$m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->d:[I

    :try_start_7e
    sget-object v0, Lcn/domob/wall/core/f/b$1;->d:[I

    sget-object v1, Lcn/domob/wall/core/f/b$m;->b:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_197

    :goto_89
    :try_start_89
    sget-object v0, Lcn/domob/wall/core/f/b$1;->d:[I

    sget-object v1, Lcn/domob/wall/core/f/b$m;->c:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_194

    :goto_94
    :try_start_94
    sget-object v0, Lcn/domob/wall/core/f/b$1;->d:[I

    sget-object v1, Lcn/domob/wall/core/f/b$m;->d:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$m;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_191

    :goto_9f
    :try_start_9f
    sget-object v0, Lcn/domob/wall/core/f/b$1;->d:[I

    sget-object v1, Lcn/domob/wall/core/f/b$m;->e:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$m;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_18e

    .line 344
    :goto_aa
    invoke-static {}, Lcn/domob/wall/core/f/b$j;->values()[Lcn/domob/wall/core/f/b$j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    :try_start_b3
    sget-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    sget-object v1, Lcn/domob/wall/core/f/b$j;->b:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_18b

    :goto_be
    :try_start_be
    sget-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    sget-object v1, Lcn/domob/wall/core/f/b$j;->c:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_188

    :goto_c9
    :try_start_c9
    sget-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    sget-object v1, Lcn/domob/wall/core/f/b$j;->d:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d4} :catch_185

    :goto_d4
    :try_start_d4
    sget-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    sget-object v1, Lcn/domob/wall/core/f/b$j;->e:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_df} :catch_182

    :goto_df
    :try_start_df
    sget-object v0, Lcn/domob/wall/core/f/b$1;->c:[I

    sget-object v1, Lcn/domob/wall/core/f/b$j;->f:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_17f

    .line 304
    :goto_ea
    invoke-static {}, Lcn/domob/wall/core/DService$ReportDownLoadType;->values()[Lcn/domob/wall/core/DService$ReportDownLoadType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    :try_start_f3
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fe} :catch_17d

    :goto_fe
    :try_start_fe
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_REPEAT:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_109} :catch_17b

    :goto_109
    :try_start_109
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_114} :catch_179

    :goto_114
    :try_start_114
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11f} :catch_177

    :goto_11f
    :try_start_11f
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_CANCEL:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_12a} :catch_175

    :goto_12a
    :try_start_12a
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_135} :catch_173

    :goto_135
    :try_start_135
    sget-object v0, Lcn/domob/wall/core/f/b$1;->b:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_140} :catch_171

    .line 268
    :goto_140
    invoke-static {}, Lcn/domob/wall/core/DService$ReportUserActionType;->values()[Lcn/domob/wall/core/DService$ReportUserActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/domob/wall/core/f/b$1;->a:[I

    :try_start_149
    sget-object v0, Lcn/domob/wall/core/f/b$1;->a:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->ENTRY:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportUserActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_149 .. :try_end_154} :catch_16f

    :goto_154
    :try_start_154
    sget-object v0, Lcn/domob/wall/core/f/b$1;->a:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->EXIT:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportUserActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_15f} :catch_16d

    :goto_15f
    :try_start_15f
    sget-object v0, Lcn/domob/wall/core/f/b$1;->a:[I

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v1}, Lcn/domob/wall/core/DService$ReportUserActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15f .. :try_end_16a} :catch_16b

    :goto_16a
    return-void

    :catch_16b
    move-exception v0

    goto :goto_16a

    :catch_16d
    move-exception v0

    goto :goto_15f

    :catch_16f
    move-exception v0

    goto :goto_154

    .line 304
    :catch_171
    move-exception v0

    goto :goto_140

    :catch_173
    move-exception v0

    goto :goto_135

    :catch_175
    move-exception v0

    goto :goto_12a

    :catch_177
    move-exception v0

    goto :goto_11f

    :catch_179
    move-exception v0

    goto :goto_114

    :catch_17b
    move-exception v0

    goto :goto_109

    :catch_17d
    move-exception v0

    goto :goto_fe

    .line 344
    :catch_17f
    move-exception v0

    goto/16 :goto_ea

    :catch_182
    move-exception v0

    goto/16 :goto_df

    :catch_185
    move-exception v0

    goto/16 :goto_d4

    :catch_188
    move-exception v0

    goto/16 :goto_c9

    :catch_18b
    move-exception v0

    goto/16 :goto_be

    .line 378
    :catch_18e
    move-exception v0

    goto/16 :goto_aa

    :catch_191
    move-exception v0

    goto/16 :goto_9f

    :catch_194
    move-exception v0

    goto/16 :goto_94

    :catch_197
    move-exception v0

    goto/16 :goto_89

    .line 416
    :catch_19a
    move-exception v0

    goto/16 :goto_75

    :catch_19d
    move-exception v0

    goto/16 :goto_6a

    :catch_1a0
    move-exception v0

    goto/16 :goto_5f

    :catch_1a3
    move-exception v0

    goto/16 :goto_54

    .line 559
    :catch_1a6
    move-exception v0

    goto/16 :goto_40

    :catch_1a9
    move-exception v0

    goto/16 :goto_35

    :catch_1ac
    move-exception v0

    goto/16 :goto_2a

    :catch_1af
    move-exception v0

    goto/16 :goto_1f

    :catch_1b2
    move-exception v0

    goto/16 :goto_14
.end method
