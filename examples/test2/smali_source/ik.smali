.class public final Lik;
.super Ljava/security/BasicPermission;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lik;->a:Ljava/lang/String;

    invoke-static {p2}, Lik;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lik;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static {p0}, Lat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " ,"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_c
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threadlocalecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    or-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    or-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_2c
    const-string v3, "threadlocaldhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    or-int/lit8 v0, v0, 0x4

    goto :goto_c

    :cond_37
    const-string v3, "dhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    or-int/lit8 v0, v0, 0x8

    goto :goto_c

    :cond_42
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    or-int/lit8 v0, v0, 0xf

    goto :goto_c

    :cond_4d
    if-nez v0, :cond_57

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown permissions passed to mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lik;

    if-eqz v2, :cond_21

    check-cast p1, Lik;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p0, Lik;->a:I

    iget v3, p1, Lik;->a:I

    if-ne v2, v3, :cond_1f

    invoke-virtual {p0}, Lik;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lik;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public final getActions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lik;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Lik;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lik;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final implies(Ljava/security/Permission;)Z
    .registers 5
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lik;

    if-nez v1, :cond_6

    .end local p1    # "permission":Ljava/security/Permission;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "permission":Ljava/security/Permission;
    :cond_6
    invoke-virtual {p0}, Lik;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Lik;

    .end local p1    # "permission":Ljava/security/Permission;
    iget v1, p0, Lik;->a:I

    iget v2, p1, Lik;->a:I

    and-int/2addr v1, v2

    iget v2, p1, Lik;->a:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
