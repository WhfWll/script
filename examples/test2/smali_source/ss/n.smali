.class public final Lss/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/n$a;
    }
.end annotation


# static fields
.field public static final a:Lss/n;

.field public static final b:Lss/n;

.field public static final c:Lss/n;

.field private static final d:[Lss/j;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [Lss/j;

    sget-object v1, Lss/j;->aK:Lss/j;

    aput-object v1, v0, v4

    sget-object v1, Lss/j;->aO:Lss/j;

    aput-object v1, v0, v3

    sget-object v1, Lss/j;->W:Lss/j;

    aput-object v1, v0, v5

    sget-object v1, Lss/j;->am:Lss/j;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lss/j;->al:Lss/j;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lss/j;->av:Lss/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/j;->aw:Lss/j;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/j;->F:Lss/j;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/j;->J:Lss/j;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/j;->U:Lss/j;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/j;->D:Lss/j;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lss/j;->H:Lss/j;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lss/j;->h:Lss/j;

    aput-object v2, v0, v1

    sput-object v0, Lss/n;->d:[Lss/j;

    new-instance v0, Lss/n$a;

    invoke-direct {v0, v3}, Lss/n$a;-><init>(Z)V

    sget-object v1, Lss/n;->d:[Lss/j;

    invoke-virtual {v0, v1}, Lss/n$a;->a([Lss/j;)Lss/n$a;

    move-result-object v0

    new-array v1, v6, [Lss/ao;

    sget-object v2, Lss/ao;->a:Lss/ao;

    aput-object v2, v1, v4

    sget-object v2, Lss/ao;->b:Lss/ao;

    aput-object v2, v1, v3

    sget-object v2, Lss/ao;->c:Lss/ao;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lss/n$a;->a([Lss/ao;)Lss/n$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lss/n$a;->a(Z)Lss/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/n$a;->a()Lss/n;

    move-result-object v0

    sput-object v0, Lss/n;->a:Lss/n;

    new-instance v0, Lss/n$a;

    sget-object v1, Lss/n;->a:Lss/n;

    invoke-direct {v0, v1}, Lss/n$a;-><init>(Lss/n;)V

    new-array v1, v3, [Lss/ao;

    sget-object v2, Lss/ao;->c:Lss/ao;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lss/n$a;->a([Lss/ao;)Lss/n$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lss/n$a;->a(Z)Lss/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/n$a;->a()Lss/n;

    move-result-object v0

    sput-object v0, Lss/n;->b:Lss/n;

    new-instance v0, Lss/n$a;

    invoke-direct {v0, v4}, Lss/n$a;-><init>(Z)V

    invoke-virtual {v0}, Lss/n$a;->a()Lss/n;

    move-result-object v0

    sput-object v0, Lss/n;->c:Lss/n;

    return-void
.end method

.method private constructor <init>(Lss/n$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/n$a;->a(Lss/n$a;)Z

    move-result v0

    iput-boolean v0, p0, Lss/n;->e:Z

    invoke-static {p1}, Lss/n$a;->b(Lss/n$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    invoke-static {p1}, Lss/n$a;->c(Lss/n$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/n;->h:[Ljava/lang/String;

    invoke-static {p1}, Lss/n$a;->d(Lss/n$a;)Z

    move-result v0

    iput-boolean v0, p0, Lss/n;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lss/n$a;Lss/o;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/n;-><init>(Lss/n$a;)V

    return-void
.end method

.method static synthetic a(Lss/n;)Z
    .registers 2

    iget-boolean v0, p0, Lss/n;->e:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v1, p0

    if-eqz v1, :cond_b

    array-length v1, p1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v2, p0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_b

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Lss/ss/j;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lss/n;
    .registers 7

    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4b

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lss/n;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lss/ss/j;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_13
    iget-object v0, p0, Lss/n;->h:[Ljava/lang/String;

    if-eqz v0, :cond_51

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lss/n;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lss/ss/j;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_25
    if-eqz p2, :cond_39

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lss/ss/j;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lss/ss/j;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_39
    new-instance v2, Lss/n$a;

    invoke-direct {v2, p0}, Lss/n$a;-><init>(Lss/n;)V

    invoke-virtual {v2, v1}, Lss/n$a;->a([Ljava/lang/String;)Lss/n$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/n$a;->b([Ljava/lang/String;)Lss/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/n$a;->a()Lss/n;

    move-result-object v0

    return-object v0

    :cond_4b
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    :cond_51
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method static synthetic b(Lss/n;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/n;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/n;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lss/n;)Z
    .registers 2

    iget-boolean v0, p0, Lss/n;->f:Z

    return v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lss/n;->b(Ljavax/net/ssl/SSLSocket;Z)Lss/n;

    move-result-object v0

    iget-object v1, v0, Lss/n;->h:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lss/n;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lss/n;->g:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v0, v0, Lss/n;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lss/n;->e:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lss/n;->e:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lss/n;->h:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lss/n;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/n;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    iget-object v1, p0, Lss/n;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lss/n;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/n;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lss/j;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lss/n;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lss/n;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lss/j;->a(Ljava/lang/String;)Lss/j;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    invoke-static {v1}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ao;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/n;->h:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lss/n;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lss/ao;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lss/n;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lss/n;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lss/ao;->a(Ljava/lang/String;)Lss/ao;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    invoke-static {v1}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lss/n;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lss/n;

    if-nez v2, :cond_7

    .end local p1    # "other":Ljava/lang/Object;
    :cond_6
    :goto_6
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lss/n;

    .end local p1    # "other":Ljava/lang/Object;
    iget-boolean v2, p0, Lss/n;->e:Z

    iget-boolean v3, p1, Lss/n;->e:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lss/n;->e:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lss/n;->g:[Ljava/lang/String;

    iget-object v3, p1, Lss/n;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lss/n;->h:[Ljava/lang/String;

    iget-object v3, p1, Lss/n;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lss/n;->f:Z

    iget-boolean v3, p1, Lss/n;->f:Z

    if-ne v2, v3, :cond_6

    :cond_31
    move v0, v1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-boolean v1, p0, Lss/n;->e:Z

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/n;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lss/n;->f:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    add-int/2addr v0, v1

    :cond_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lss/n;->e:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lss/n;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lss/n;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Lss/n;->h:[Ljava/lang/String;

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lss/n;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lss/n;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_4f
    const-string v0, "[all enabled]"

    goto :goto_13

    :cond_52
    const-string v1, "[all enabled]"

    goto :goto_1f
.end method
