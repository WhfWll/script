.class public final Lss/ss/gK/t;
.super Ljava/lang/Exception;


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_13

    move-result-object v0

    :goto_10
    sput-object v0, Lss/ss/gK/t;->a:Ljava/lang/reflect/Method;

    return-void

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lss/ss/gK/t;->b:Ljava/io/IOException;

    return-void
.end method

.method private a(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 6

    sget-object v0, Lss/ss/gK/t;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    :try_start_4
    sget-object v0, Lss/ss/gK/t;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_12

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_f
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/t;->b:Ljava/io/IOException;

    return-object v0
.end method

.method public a(Ljava/io/IOException;)V
    .registers 3

    iget-object v0, p0, Lss/ss/gK/t;->b:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lss/ss/gK/t;->a(Ljava/io/IOException;Ljava/io/IOException;)V

    iput-object p1, p0, Lss/ss/gK/t;->b:Ljava/io/IOException;

    return-void
.end method
