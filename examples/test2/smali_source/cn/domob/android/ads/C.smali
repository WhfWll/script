.class Lcn/domob/android/ads/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/C$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "domob_update_info"

.field static final b:Ljava/lang/String; = "ipb"

.field static final c:Ljava/lang/String; = "info_md5"

.field static final d:Ljava/lang/String; = "n"

.field static final e:Ljava/lang/String; = "nt"

.field static final f:Ljava/lang/String; = "vc"

.field static final g:Ljava/lang/String; = "vn"

.field static final h:Ljava/lang/String; = "u"

.field static final i:Ljava/lang/String; = "s"

.field static final j:Ljava/lang/String; = "md5"

.field static final k:Ljava/lang/String; = "ul"

.field static final l:Ljava/lang/String; = "f"

.field static final m:Ljava/lang/String; = "sk"

.field static final n:Ljava/lang/String; = "nrt"

.field static final o:Ljava/lang/String; = "nri"

.field static final p:Ljava/lang/String; = "next_time"

.field static final q:Ljava/lang/String; = "skip_vc"

.field static final r:I = 0x0

.field static final s:I = 0x1

.field static final t:I = 0x2

.field static final u:I = 0x0

.field static final v:I = 0x1

.field static final w:I = 0x3

.field private static x:Lcn/domob/android/i/f;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcn/domob/android/ads/g;

.field private y:Landroid/content/Context;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/C;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/g;)V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    .line 108
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
    .registers 22

    .prologue
    .line 239
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 240
    const-string v3, "md5"

    const-string v4, ""

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v4, "f"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 242
    const-string v5, "sk"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 244
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 245
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 246
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 248
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    const/16 v8, 0x5a

    const/16 v9, 0x5a

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 253
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    const/16 v9, 0xe6

    const/16 v10, 0xe6

    const/16 v11, 0xe6

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 256
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v11, "\u66f4\u65b0\u63d0\u9192"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/high16 v11, 0x41a00000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 265
    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 270
    const v13, 0x1080041

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 274
    const/4 v14, 0x5

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 275
    const/4 v14, 0x5

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 277
    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 289
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v11

    .line 290
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v12

    .line 291
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v13

    .line 292
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v14

    .line 293
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v15

    .line 294
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u540d\u79f0\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/C;->B:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u5927\u5c0f\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/C;->F:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u7248\u672c\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const-string v16, "\u63cf\u8ff0\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/C;->G:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v11, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 314
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->b(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v10

    .line 315
    const-string v12, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 320
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 321
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 322
    new-instance v13, Lcn/domob/android/ads/C$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v3}, Lcn/domob/android/ads/C$1;-><init>(Lcn/domob/android/ads/C;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 343
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 344
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 351
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v15

    .line 353
    const-string v16, "\u6682\u65f6\u4e0d\u66f4\u65b0"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const/high16 v16, 0x41700000

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextSize(F)V

    .line 355
    new-instance v16, Lcn/domob/android/ads/C$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcn/domob/android/ads/C$2;-><init>(Lcn/domob/android/ads/C;Landroid/app/Dialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/C;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v16

    .line 367
    const-string v17, "\u8df3\u8fc7\u6b64\u7248\u672c"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const/high16 v17, 0x41700000

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextSize(F)V

    .line 369
    new-instance v17, Lcn/domob/android/ads/C$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v2}, Lcn/domob/android/ads/C$3;-><init>(Lcn/domob/android/ads/C;Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    if-eqz v5, :cond_22a

    .line 384
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 386
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 387
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 388
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 389
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 390
    const/high16 v5, 0x3f800000

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 391
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_22a
    if-nez v4, :cond_24a

    .line 395
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 397
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 398
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 399
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 400
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 401
    const/high16 v4, 0x3f800000

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    invoke-virtual {v14, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    :cond_24a
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 408
    invoke-virtual {v3, v14, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    const/16 v4, 0x14

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 415
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 416
    const/high16 v4, 0x3f800000

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 418
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v7, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v7, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {v7, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 425
    return-object v6
.end method

.method private static a(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 429
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 430
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/C;)Lcn/domob/android/ads/g;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcn/domob/android/ads/C;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 527
    new-instance v0, Lcn/domob/android/ads/q;

    iget-object v1, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/C;)V

    .line 529
    invoke-virtual {v0}, Lcn/domob/android/ads/q;->i()V

    .line 530
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/SharedPreferences;)Z
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    const-string v2, "next_time"

    invoke-interface {p2, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 501
    const-string v4, "skip_vc"

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 505
    sget-object v5, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-class v6, Lcn/domob/android/ads/C;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0b\u6b21\u5141\u8bb8\u63d0\u793a\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    cmp-long v5, v2, v10

    if-eqz v5, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-ltz v2, :cond_74

    .line 509
    :cond_4b
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-class v3, Lcn/domob/android/ads/C;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u5230\u4e86\u5141\u8bb8\u63d0\u793a\u7684\u65f6\u95f4\u95f4\u9694\uff0c\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v3, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v0

    .line 515
    :goto_59
    if-eqz v4, :cond_61

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 516
    :cond_61
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-class v4, Lcn/domob/android/ads/C;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7528\u6237\u6ca1\u6709\u8df3\u8fc7\u8fd9\u4e2a\u7248\u672c\uff0c\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v0

    .line 522
    :goto_6f
    if-eqz v3, :cond_92

    if-eqz v2, :cond_92

    :goto_73
    return v0

    .line 512
    :cond_74
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-class v3, Lcn/domob/android/ads/C;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u672a\u5230\u5141\u8bb8\u63d0\u793a\u7684\u65f6\u95f4\u95f4\u9694\uff0c\u4e0d\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v3, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v1

    goto :goto_59

    .line 519
    :cond_83
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-class v4, Lcn/domob/android/ads/C;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7528\u6237\u8df3\u8fc7\u4e86\u8fd9\u4e2a\u7248\u672c\uff0c\u4e0d\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v1

    goto :goto_6f

    :cond_92
    move v0, v1

    .line 522
    goto :goto_73
.end method

.method private static b(Landroid/content/Context;)Landroid/widget/Button;
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x0

    const v8, -0x777778

    const/high16 v7, 0x40a00000

    const/4 v6, 0x1

    .line 436
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 438
    const/high16 v1, 0x41a00000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 439
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 440
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v5, [I

    const-string v4, "#3399ff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v9

    const-string v4, "#99bbff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 442
    invoke-virtual {v1, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 443
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 444
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v5, [I

    const-string v5, "#3399ff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v9

    const-string v5, "#99bbff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 446
    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 447
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    new-instance v3, Lcn/domob/android/ads/C$4;

    invoke-direct {v3, v2, v1}, Lcn/domob/android/ads/C$4;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/C;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/C;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcn/domob/android/ads/C;->D:I

    return v0
.end method

.method private static c(Landroid/content/Context;)Landroid/widget/Button;
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const v6, -0x777778

    const/high16 v5, 0x40a00000

    .line 468
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 470
    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 471
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 472
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v4, [I

    fill-array-data v3, :array_46

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 474
    invoke-virtual {v1, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 475
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 476
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    fill-array-data v4, :array_4e

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 478
    invoke-virtual {v2, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 479
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    new-instance v3, Lcn/domob/android/ads/C$5;

    invoke-direct {v3, v2, v1}, Lcn/domob/android/ads/C$5;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    return-object v0

    .line 472
    nop

    :array_46
    .array-data 4
        -0xbbbbbc
        -0x777778
    .end array-data

    .line 476
    :array_4e
    .array-data 4
        -0xbbbbbc
        -0x777778
    .end array-data
.end method

.method static synthetic d(Lcn/domob/android/ads/C;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/C;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/C;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/C;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 11

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_22

    .line 122
    :cond_1a
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v1, "current network is not enable, ignoring checkUpdate"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 236
    :cond_21
    :goto_21
    return-void

    .line 126
    :cond_22
    new-instance v0, Lcn/domob/android/ads/r;

    iget-object v4, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    iget-object v5, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    invoke-direct {v0, v4, v5}, Lcn/domob/android/ads/r;-><init>(Lcn/domob/android/ads/g;Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lcn/domob/android/ads/r;->a()V

    .line 130
    :try_start_2e
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v4, "\u5f00\u59cb\u68c0\u67e5\u66f4\u65b0..."

    invoke-virtual {v0, p0, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    const-string v4, "domob_update_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 135
    const-string v0, "vc"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_1ba

    if-eqz v0, :cond_5b

    .line 138
    :try_start_4f
    iget-object v0, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/C;->D:I
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_5b} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5b} :catch_1ba

    .line 145
    :cond_5b
    :goto_5b
    :try_start_5b
    const-string v0, "nrt"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    sget-object v6, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b58\u50a8\u7684\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v6, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b58\u50a8\u7684\u66f4\u65b0\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    packed-switch v0, :pswitch_data_264

    .line 170
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v3, "\u9ed8\u8ba4\u81ea\u7136\u5929\u6bcf\u5929\u63d0\u793a\u4e00\u6b21"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 174
    :goto_9f
    iget-object v1, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 177
    iget-object v3, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 178
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/domob/android/ads/C;->z:Ljava/lang/String;

    .line 179
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 180
    sget-object v3, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u524d\u5df2\u5b89\u88c5\u7684\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_21

    .line 184
    sget-object v1, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v3, "Need update"

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcn/domob/android/ads/C;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 187
    sget-object v1, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v3, "Need notice"

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    const-string v1, "n"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->B:Ljava/lang/String;

    .line 190
    const-string v1, "vc"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    .line 191
    const-string v1, "vn"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    .line 192
    const-string v1, "u"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->A:Ljava/lang/String;

    .line 193
    const-string v1, "s"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->F:Ljava/lang/String;

    .line 194
    const-string v1, "ul"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/C;->G:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcn/domob/android/ads/C;->B:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/domob/android/ads/C;->G:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 199
    iget-object v1, p0, Lcn/domob/android/ads/C;->y:Landroid/content/Context;

    invoke-direct {p0, v1, v4}, Lcn/domob/android/ads/C;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 203
    if-nez v0, :cond_226

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd 00:00:00"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 209
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 210
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u6b21\u63d0\u9192\u65f6\u95f4\uff08\u5b57\u7b26\u4e32\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 212
    sget-object v2, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u6b21\u63d0\u9192\u65f6\u95f4\uff08\u65f6\u95f4\u6233\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const-string v2, "next_time"

    invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 224
    :goto_1a6
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_21

    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/C;->z:Ljava/lang/String;

    iget v2, p0, Lcn/domob/android/ads/C;->D:I

    iget-object v3, p0, Lcn/domob/android/ads/C;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_1b8} :catch_1ba

    goto/16 :goto_21

    .line 233
    :catch_1ba
    move-exception v0

    .line 234
    sget-object v1, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 139
    :catch_1c2
    move-exception v0

    .line 140
    :try_start_1c3
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version code. Cannot convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/android/ads/C;->C:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to int."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/C;->D:I

    goto/16 :goto_5b

    .line 154
    :pswitch_1e8
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v3, "\u81ea\u7136\u5929\u6bcf\u5929\u63d0\u793a\u4e00\u6b21"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 155
    goto/16 :goto_9f

    .line 158
    :pswitch_1f2
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v1, "\u6bcf\u6b21\u6253\u5f00\u90fd\u63d0\u793a"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    .line 159
    goto/16 :goto_9f

    .line 161
    :pswitch_1fc
    const-string v0, "nri"

    const/4 v1, 0x3

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    if-ge v0, v9, :cond_206

    move v0, v3

    .line 166
    :cond_206
    sget-object v1, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u95f4\u9694\u63d0\u793a\uff0c\u65f6\u95f4\u95f4\u9694\u4e3a\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u5c0f\u65f6"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 214
    :cond_226
    if-ne v0, v2, :cond_23a

    .line 216
    sget-object v0, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    const-string v1, "\u6bcf\u6b21\u6253\u5f00\u5747\u63d0\u793a"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const-string v0, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1a6

    .line 220
    :cond_23a
    sget-object v1, Lcn/domob/android/ads/C;->x:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6\u540e\u63d0\u9192"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const-string v1, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-interface {v5, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_261} :catch_1ba

    goto/16 :goto_1a6

    .line 151
    nop

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1e8
        :pswitch_1f2
        :pswitch_1fc
    .end packed-switch
.end method

.method public c(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 534
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 535
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 537
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 538
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 540
    :cond_15
    return-void
.end method

.method public d(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 544
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 545
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 547
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 548
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->f(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    :cond_15
    return-void
.end method

.method public e(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 554
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 555
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 557
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 558
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    :cond_15
    return-void
.end method

.method public f(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 564
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 565
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 567
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 568
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->h(Ljava/lang/String;ILjava/lang/String;)V

    .line 570
    :cond_15
    return-void
.end method

.method public g(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 574
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 575
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 577
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 578
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    :cond_15
    return-void
.end method

.method public h(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 584
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 585
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 587
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 588
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;ILjava/lang/String;)V

    .line 590
    :cond_15
    return-void
.end method

.method public i(Lcn/domob/android/ads/q;)V
    .registers 6

    .prologue
    .line 594
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_15

    .line 595
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    .line 597
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v2

    .line 598
    iget-object v3, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/g;->k(Ljava/lang/String;ILjava/lang/String;)V

    .line 600
    :cond_15
    return-void
.end method

.method public j(Lcn/domob/android/ads/q;)V
    .registers 8

    .prologue
    .line 604
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_18

    .line 605
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->d()I

    move-result v2

    .line 607
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v3

    .line 611
    const/4 v4, 0x0

    .line 612
    const-string v5, ""

    .line 613
    iget-object v0, p0, Lcn/domob/android/ads/C;->H:Lcn/domob/android/ads/g;

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 615
    :cond_18
    return-void
.end method
