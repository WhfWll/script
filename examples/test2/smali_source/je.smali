.class public final Lje;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lje;->a:Ljava/lang/String;

    iput-object p2, p0, Lje;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lje;

    if-nez v1, :cond_6

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lje;

    .end local p1    # "o":Ljava/lang/Object;
    if-eq p1, p0, :cond_1e

    iget-object v1, p0, Lje;->a:Ljava/lang/String;

    iget-object v2, p1, Lje;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lje;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lje;->b:Ljava/lang/String;

    iget-object v2, p1, Lje;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lje;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lje;->a:Ljava/lang/String;

    invoke-static {v0}, Lje;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lje;->b:Ljava/lang/String;

    invoke-static {v1}, Lje;->a(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
