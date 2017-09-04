.class final Lhz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Lfl;

.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfl;-><init>([BB)V

    iput-object v0, p0, Lhz;->a:Lfl;

    invoke-direct {p0}, Lhz;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lhz;->a:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lhz;->a:Lfl;

    invoke-virtual {v0}, Lfl;->a()Lfv;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lfu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "malformed DER construction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lhz;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lhz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lhz;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lhz;->a:Ljava/lang/Object;

    return-object v0
.end method
