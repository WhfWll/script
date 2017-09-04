.class public Lcn/domob/android/ads/B;
.super Lcn/domob/android/ads/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/B$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/android/i/f; = null

.field private static final f:Ljava/lang/String; = "domobBridge"


# instance fields
.field private e:Lcn/domob/android/ads/B$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcn/domob/android/f/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/B;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/B$a;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 183
    iput-object v0, p0, Lcn/domob/android/ads/B;->g:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcn/domob/android/ads/B;->h:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    .line 43
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/B;[BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/B;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    :try_start_29
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_35

    .line 199
    :try_start_2e
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3f
    .catchall {:try_start_2e .. :try_end_31} :catchall_51

    .line 205
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_38

    .line 211
    :goto_34
    return-object v0

    .line 194
    :catch_35
    move-exception v0

    move-object v0, v1

    .line 195
    goto :goto_34

    .line 206
    :catch_38
    move-exception v1

    .line 207
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 200
    :catch_3f
    move-exception v0

    .line 201
    :try_start_40
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_51

    .line 205
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4a

    :goto_48
    move-object v0, v1

    .line 208
    goto :goto_34

    .line 206
    :catch_4a
    move-exception v0

    .line 207
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_48

    .line 204
    :catchall_51
    move-exception v0

    .line 205
    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 208
    :goto_55
    throw v0

    .line 206
    :catch_56
    move-exception v1

    .line 207
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method static synthetic b(Lcn/domob/android/ads/B;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/android/ads/B;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/B;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/android/ads/B;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 47
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/B;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 49
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .prologue
    .line 55
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/B;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    if-eqz v0, :cond_14

    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/B$a;->a(Lcn/domob/android/ads/a/e;)V

    .line 66
    :cond_14
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    .line 73
    if-eqz p3, :cond_2c

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 76
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    const-string v2, "There is no pair in DB: %s : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2c
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 82
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_78

    .line 85
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    const-string v2, "Get image %s local location = %s from DB."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 88
    const-string v1, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "domobBridge"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->invalidate()V

    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    if-eqz v0, :cond_77

    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    invoke-interface {v0}, Lcn/domob/android/ads/B$a;->a()V

    .line 181
    :cond_77
    :goto_77
    return-void

    .line 109
    :cond_78
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    const-string v1, "Alias %s is in DB but the local location is not available. Need to download."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 118
    :goto_89
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    const-string v1, "Alias %s is about to be downloaded."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcn/domob/android/ads/B$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/B$1;-><init>(Lcn/domob/android/ads/B;)V

    iput-object v0, p0, Lcn/domob/android/ads/B;->i:Lcn/domob/android/f/g;

    .line 175
    iput-object p1, p0, Lcn/domob/android/ads/B;->g:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcn/domob/android/ads/B;->h:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/B;->i:Lcn/domob/android/f/g;

    iget-object v3, p0, Lcn/domob/android/ads/B;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcn/domob/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/g;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b4} :catch_b5

    goto :goto_77

    .line 178
    :catch_b5
    move-exception v0

    .line 179
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_77

    .line 114
    :cond_bc
    :try_start_bc
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/i/f;

    const-string v1, "Alias %s is not in DB. Download and insert."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_cd} :catch_b5

    goto :goto_89
.end method
