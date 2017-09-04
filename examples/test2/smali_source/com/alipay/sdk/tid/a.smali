.class public final Lcom/alipay/sdk/tid/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "msp.db"

.field private static final b:I = 0x1


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/tid/a;

    const v1, 0xaa

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "msp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/tid/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private native a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method private static native a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
.end method

.method private native a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native d(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public final native a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public final native onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
