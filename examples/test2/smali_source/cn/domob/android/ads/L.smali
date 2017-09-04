.class Lcn/domob/android/ads/L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/L$1;,
        Lcn/domob/android/ads/L$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static b:[Landroid/view/animation/AnimationSet; = null

.field private static c:[Landroid/view/animation/AnimationSet; = null

.field private static d:[Landroid/view/animation/AnimationSet; = null

.field private static e:[Landroid/view/animation/AnimationSet; = null

.field private static f:[Landroid/view/animation/AnimationSet; = null

.field private static final g:J = 0x2bcL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/L;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/L;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static a()[Landroid/view/animation/AnimationSet;
    .registers 10

    .prologue
    .line 46
    sget-object v0, Lcn/domob/android/ads/L;->b:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_67

    .line 47
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 50
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 51
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x40800000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 54
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 56
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 57
    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 58
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    const-wide/16 v4, 0x2bc

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 61
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 62
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 63
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 65
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcn/domob/android/ads/L;->b:[Landroid/view/animation/AnimationSet;

    .line 72
    :cond_67
    sget-object v0, Lcn/domob/android/ads/L;->b:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected static a(Lcn/domob/android/ads/L$a;)[Landroid/view/animation/AnimationSet;
    .registers 4

    .prologue
    .line 26
    sget-object v0, Lcn/domob/android/ads/L$1;->a:[I

    invoke-virtual {p0}, Lcn/domob/android/ads/L$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 38
    sget-object v0, Lcn/domob/android/ads/L;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/L;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid animation type."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 28
    :pswitch_1a
    invoke-static {}, Lcn/domob/android/ads/L;->a()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_19

    .line 30
    :pswitch_1f
    invoke-static {}, Lcn/domob/android/ads/L;->b()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_19

    .line 32
    :pswitch_24
    invoke-static {}, Lcn/domob/android/ads/L;->c()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_19

    .line 34
    :pswitch_29
    invoke-static {}, Lcn/domob/android/ads/L;->d()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_19

    .line 36
    :pswitch_2e
    invoke-static {}, Lcn/domob/android/ads/L;->e()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_19

    .line 26
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method

.method private static b()[Landroid/view/animation/AnimationSet;
    .registers 14

    .prologue
    const/high16 v11, 0x3f800000

    const-wide/16 v12, 0x2bc

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    sget-object v0, Lcn/domob/android/ads/L;->c:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_58

    .line 77
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 80
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 81
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 84
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 86
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v2, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 87
    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 88
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v11, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, Lcn/domob/android/ads/L;->c:[Landroid/view/animation/AnimationSet;

    .line 102
    :cond_58
    sget-object v0, Lcn/domob/android/ads/L;->c:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static c()[Landroid/view/animation/AnimationSet;
    .registers 14

    .prologue
    const/high16 v11, 0x3f800000

    const-wide/16 v12, 0x2bc

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 106
    sget-object v0, Lcn/domob/android/ads/L;->d:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_58

    .line 107
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 110
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 111
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v11

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 114
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 116
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 117
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 118
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v11, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 119
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 121
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 122
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 125
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 127
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 129
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    sput-object v2, Lcn/domob/android/ads/L;->d:[Landroid/view/animation/AnimationSet;

    .line 132
    :cond_58
    sget-object v0, Lcn/domob/android/ads/L;->d:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static d()[Landroid/view/animation/AnimationSet;
    .registers 16

    .prologue
    const/high16 v2, 0x3f800000

    const-wide/16 v14, 0x2bc

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 136
    sget-object v0, Lcn/domob/android/ads/L;->e:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_58

    .line 137
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 140
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 141
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, -0x40800000

    move v6, v1

    move v7, v4

    move v8, v1

    move v10, v1

    move v11, v4

    move v12, v1

    move v13, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 144
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 148
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 149
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 152
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 155
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 156
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, Lcn/domob/android/ads/L;->e:[Landroid/view/animation/AnimationSet;

    .line 162
    :cond_58
    sget-object v0, Lcn/domob/android/ads/L;->e:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static e()[Landroid/view/animation/AnimationSet;
    .registers 8

    .prologue
    const-wide/16 v6, 0x2bc

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 166
    sget-object v0, Lcn/domob/android/ads/L;->f:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_34

    .line 167
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 168
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 169
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 170
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 172
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 175
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcn/domob/android/ads/L;->f:[Landroid/view/animation/AnimationSet;

    .line 181
    :cond_34
    sget-object v0, Lcn/domob/android/ads/L;->f:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method
