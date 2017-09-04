.class public final Lss/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lss/ao;

.field private final b:Lss/j;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lss/ao;Lss/j;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/ao;",
            "Lss/j;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/v;->a:Lss/ao;

    iput-object p2, p0, Lss/v;->b:Lss/j;

    iput-object p3, p0, Lss/v;->c:Ljava/util/List;

    iput-object p4, p0, Lss/v;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lss/v;
    .registers 6

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v0}, Lss/j;->a(Ljava/lang/String;)Lss/j;

    move-result-object v2

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static {v0}, Lss/ao;->a(Ljava/lang/String;)Lss/ao;

    move-result-object v3

    :try_start_24
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_27
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_24 .. :try_end_27} :catch_3e

    move-result-object v0

    :goto_28
    if-eqz v0, :cond_41

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2e
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static {v1}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_38
    new-instance v4, Lss/v;

    invoke-direct {v4, v3, v2, v0, v1}, Lss/v;-><init>(Lss/ao;Lss/j;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    :catch_3e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_28

    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2e

    :cond_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_38
.end method


# virtual methods
.method public a()Lss/j;
    .registers 2

    iget-object v0, p0, Lss/v;->b:Lss/j;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/v;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lss/v;

    if-nez v1, :cond_6

    .end local p1    # "other":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lss/v;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lss/v;->b:Lss/j;

    iget-object v2, p1, Lss/v;->b:Lss/j;

    invoke-static {v1, v2}, Lss/ss/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lss/v;->b:Lss/j;

    iget-object v2, p1, Lss/v;->b:Lss/j;

    invoke-virtual {v1, v2}, Lss/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lss/v;->c:Ljava/util/List;

    iget-object v2, p1, Lss/v;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lss/v;->d:Ljava/util/List;

    iget-object v2, p1, Lss/v;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lss/v;->a:Lss/ao;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lss/v;->a:Lss/ao;

    invoke-virtual {v0}, Lss/ao;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/v;->b:Lss/j;

    invoke-virtual {v1}, Lss/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/v;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/v;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_a
.end method
