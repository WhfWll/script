.class public Lcn/domob/android/ads/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/b$c;,
        Lcn/domob/android/ads/a/b$b;,
        Lcn/domob/android/ads/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "cb"

.field private static final b:Ljava/lang/String; = "cb"

.field private static final c:Ljava/lang/String; = "picture"

.field private static final d:Ljava/lang/String; = "submit"

.field private static final e:Ljava/lang/String; = "local"

.field private static final f:Ljava/lang/String; = "url"

.field private static final g:Ljava/lang/String; = "name"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:Ljava/lang/String; = "src"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static n:Lcn/domob/android/i/f; = null

.field private static final p:I = 0x929

.field private static final q:I = 0x92a

.field private static r:Ljava/lang/String; = null

.field private static final s:Ljava/lang/String; = "activity_view_id"


# instance fields
.field private o:Landroid/app/Activity;

.field private t:Lcn/domob/android/ads/a/e;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private final w:I

.field private final x:I

.field private y:Landroid/os/Handler;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/a/b;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    .line 57
    iput-object v1, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->u:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcn/domob/android/ads/a/b;->w:I

    .line 61
    iput v2, p0, Lcn/domob/android/ads/a/b;->x:I

    .line 62
    iput-object v1, p0, Lcn/domob/android/ads/a/b;->y:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/b;->a(Landroid/app/Activity;)Lcn/domob/android/ads/a/e;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    .line 67
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/b;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcn/domob/android/ads/a/e;)Landroid/widget/RelativeLayout;
    .registers 8

    .prologue
    const/4 v2, -0x1

    const/high16 v5, 0x42700000

    .line 366
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 370
    iget-object v2, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const-string v3, "domob_close.png"

    invoke-static {v2, v3}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    new-instance v2, Lcn/domob/android/ads/a/b$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/b$3;-><init>(Lcn/domob/android/ads/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v2, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    .line 380
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v4, v5, v2

    float-to-int v4, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 384
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v2, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 388
    return-object v0
.end method

.method private a(Landroid/app/Activity;)Lcn/domob/android/ads/a/e;
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 167
    new-instance v0, Lcn/domob/android/ads/a/e;

    const-string v1, "activity_view_id"

    invoke-direct {v0, p1, v1, v2}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 168
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 332
    .line 333
    const-string v0, ""

    .line 335
    :try_start_2
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 337
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    if-nez v0, :cond_62

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "file://"

    .line 343
    if-eqz v0, :cond_5f

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 345
    :cond_56
    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_5e
    return-object v0

    .line 347
    :cond_5f
    const-string v0, ""

    goto :goto_5e

    .line 350
    :cond_62
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_70
    .catchall {:try_start_2 .. :try_end_6e} :catchall_79

    move-result-object v0

    goto :goto_5e

    .line 354
    :catch_70
    move-exception v0

    .line 355
    :try_start_71
    sget-object v1, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 356
    const-string v0, ""
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_79

    goto :goto_5e

    .line 357
    :catchall_79
    move-exception v0

    throw v0
.end method

.method private a(Landroid/net/Uri;I)V
    .registers 6

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1e

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 221
    const-string v1, "cb"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->u:Ljava/lang/String;

    .line 223
    :cond_1e
    packed-switch p2, :pswitch_data_58

    .line 250
    :goto_21
    return-void

    .line 225
    :pswitch_22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9009\u62e9\u4e0a\u4f20\u56fe\u7247\u7684\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ece\u5df2\u6709\u76f8\u518c\u4e2d\u9009\u62e9"

    new-instance v2, Lcn/domob/android/ads/a/b$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/b$2;-><init>(Lcn/domob/android/ads/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u76f8\u83b7\u5f97\u56fe\u7247"

    new-instance v2, Lcn/domob/android/ads/a/b$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/b$1;-><init>(Lcn/domob/android/ads/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_21

    .line 244
    :pswitch_4f
    invoke-direct {p0}, Lcn/domob/android/ads/a/b;->c()Z

    goto :goto_21

    .line 247
    :pswitch_53
    invoke-direct {p0}, Lcn/domob/android/ads/a/b;->e()Z

    goto :goto_21

    .line 223
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_22
        :pswitch_4f
        :pswitch_53
    .end packed-switch
.end method

.method static synthetic a(Lcn/domob/android/ads/a/b;Landroid/net/Uri;I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/a/b;->a(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 71
    new-instance v0, Lcn/domob/android/ads/a/b$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/a/b$b;-><init>(Lcn/domob/android/ads/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcn/domob/android/ads/a/b$c;

    iget-object v2, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p4}, Lcn/domob/android/ads/a/b$c;-><init>(Lcn/domob/android/ads/a/b;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/domob/android/ads/a/b;->y:Landroid/os/Handler;

    .line 73
    invoke-virtual {v0}, Lcn/domob/android/ads/a/b$b;->start()V

    .line 74
    return-void
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/b;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/ads/a/b;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .registers 5

    .prologue
    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/domob/android/ads/a/b;->r:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 183
    :cond_1d
    invoke-static {}, Lcn/domob/android/ads/a/b;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const/16 v2, 0x929

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method static synthetic c(Lcn/domob/android/ads/a/b;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/ads/a/b;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/b;)Lcn/domob/android/ads/a/e;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/a/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/i/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/a/b;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    return-object v0
.end method

.method private e()Z
    .registers 4

    .prologue
    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const/16 v2, 0x92a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    const-string v0, ""

    .line 154
    if-eqz v1, :cond_1a

    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    const-string v1, "webview_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_1a
    iget-object v1, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    new-instance v1, Lcn/domob/android/ads/a/b$a;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/b$a;-><init>(Lcn/domob/android/ads/a/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$a;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 253
    packed-switch p1, :pswitch_data_118

    .line 292
    :cond_4
    :goto_4
    return-void

    .line 256
    :pswitch_5
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    const-string v1, "update the pic taken"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo saving path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, ""

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(true,\'file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v1, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 268
    :pswitch_7a
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    const-string v1, "update the pic selected"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 269
    if-nez p3, :cond_8c

    .line 270
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    const-string v1, "album select url is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 273
    :cond_8c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->z:Landroid/net/Uri;

    .line 274
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->z:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_a2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 276
    :cond_a2
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const-string v1, "\u4e0a\u4f20\u683c\u5f0f\u6709\u8bef,\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u9009\u62e9\u4e0a\u4f20\u56fe\u7247"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 280
    :cond_af
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 281
    const-wide/32 v4, 0x300000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_d3

    .line 282
    sget-object v0, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    const-string v1, "the size of upload pic is larger than 3M"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->o:Landroid/app/Activity;

    const-string v1, "\u4e0a\u4f20\u56fe\u7247\u5c3a\u5bf8\u4e0d\u80fd\u5927\u4e8e3M,\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u9009\u62e9\u4e0a\u4f20\u56fe\u7247"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 287
    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(true,\'file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    sget-object v1, Lcn/domob/android/ads/a/b;->n:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcn/domob/android/ads/a/b;->t:Lcn/domob/android/ads/a/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 253
    nop

    :pswitch_data_118
    .packed-switch 0x929
        :pswitch_5
        :pswitch_7a
    .end packed-switch
.end method
