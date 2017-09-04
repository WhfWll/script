.class public Lcom/lidroid/xutils/view/ResLoader;
.super Ljava/lang/Object;
.source "ResLoader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lidroid$xutils$view$ResType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$lidroid$xutils$view$ResType()[I
    .registers 3

    .prologue
    .line 11
    sget-object v0, Lcom/lidroid/xutils/view/ResLoader;->$SWITCH_TABLE$com$lidroid$xutils$view$ResType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/view/ResType;->values()[Lcom/lidroid/xutils/view/ResType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Animation:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_cb

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Boolean:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_c8

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Color:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_c5

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->ColorStateList:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_c2

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Dimension:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_bf

    :goto_39
    :try_start_39
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->DimensionPixelOffset:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_bd

    :goto_42
    :try_start_42
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->DimensionPixelSize:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_bb

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Drawable:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_b9

    :goto_55
    :try_start_55
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->IntArray:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5f} :catch_b7

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Integer:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_b5

    :goto_69
    :try_start_69
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Movie:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_b3

    :goto_73
    :try_start_73
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->String:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_b1

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->StringArray:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_af

    :goto_87
    :try_start_87
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Text:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_ad

    :goto_91
    :try_start_91
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->TextArray:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_ab

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/lidroid/xutils/view/ResType;->Xml:Lcom/lidroid/xutils/view/ResType;

    invoke-virtual {v1}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a9

    :goto_a5
    sput-object v0, Lcom/lidroid/xutils/view/ResLoader;->$SWITCH_TABLE$com$lidroid$xutils$view$ResType:[I

    goto/16 :goto_4

    :catch_a9
    move-exception v1

    goto :goto_a5

    :catch_ab
    move-exception v1

    goto :goto_9b

    :catch_ad
    move-exception v1

    goto :goto_91

    :catch_af
    move-exception v1

    goto :goto_87

    :catch_b1
    move-exception v1

    goto :goto_7d

    :catch_b3
    move-exception v1

    goto :goto_73

    :catch_b5
    move-exception v1

    goto :goto_69

    :catch_b7
    move-exception v1

    goto :goto_5f

    :catch_b9
    move-exception v1

    goto :goto_55

    :catch_bb
    move-exception v1

    goto :goto_4b

    :catch_bd
    move-exception v1

    goto :goto_42

    :catch_bf
    move-exception v1

    goto/16 :goto_39

    :catch_c2
    move-exception v1

    goto/16 :goto_30

    :catch_c5
    move-exception v1

    goto/16 :goto_27

    :catch_c8
    move-exception v1

    goto/16 :goto_1e

    :catch_cb
    move-exception v1

    goto/16 :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadRes(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;
    .registers 6
    .param p0, "type"    # Lcom/lidroid/xutils/view/ResType;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ge p2, v1, :cond_7

    .line 52
    :cond_6
    :goto_6
    return-object v0

    .line 15
    :cond_7
    invoke-static {}, Lcom/lidroid/xutils/view/ResLoader;->$SWITCH_TABLE$com$lidroid$xutils$view$ResType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/lidroid/xutils/view/ResType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c0

    goto :goto_6

    .line 17
    :pswitch_15
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_6

    .line 19
    :pswitch_1a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    .line 21
    :pswitch_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 23
    :pswitch_34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_6

    .line 25
    :pswitch_3d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_6

    .line 27
    :pswitch_4a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 29
    :pswitch_57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 31
    :pswitch_64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    .line 33
    :pswitch_6d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 35
    :pswitch_7a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_6

    .line 37
    :pswitch_83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    goto/16 :goto_6

    .line 39
    :pswitch_8d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 41
    :pswitch_97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 43
    :pswitch_a1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_6

    .line 45
    :pswitch_ab
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_6

    .line 47
    :pswitch_b5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto/16 :goto_6

    .line 15
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1a
        :pswitch_27
        :pswitch_34
        :pswitch_3d
        :pswitch_4a
        :pswitch_57
        :pswitch_64
        :pswitch_6d
        :pswitch_7a
        :pswitch_83
        :pswitch_8d
        :pswitch_97
        :pswitch_a1
        :pswitch_ab
        :pswitch_b5
    .end packed-switch
.end method
