.class public final enum Lss/ss/ss/s;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lss/ss/ss/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lss/ss/ss/s;

.field public static final enum b:Lss/ss/ss/s;

.field public static final enum c:Lss/ss/ss/s;

.field public static final enum d:Lss/ss/ss/s;

.field private static final synthetic e:[Lss/ss/ss/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lss/ss/ss/s;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lss/ss/ss/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/ss/ss/s;->a:Lss/ss/ss/s;

    new-instance v0, Lss/ss/ss/s;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lss/ss/ss/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/ss/ss/s;->b:Lss/ss/ss/s;

    new-instance v0, Lss/ss/ss/s;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lss/ss/ss/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/ss/ss/s;->c:Lss/ss/ss/s;

    new-instance v0, Lss/ss/ss/s;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lss/ss/ss/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/ss/ss/s;->d:Lss/ss/ss/s;

    const/4 v0, 0x4

    new-array v0, v0, [Lss/ss/ss/s;

    sget-object v1, Lss/ss/ss/s;->a:Lss/ss/ss/s;

    aput-object v1, v0, v2

    sget-object v1, Lss/ss/ss/s;->b:Lss/ss/ss/s;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/ss/s;->c:Lss/ss/ss/s;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/ss/s;->d:Lss/ss/ss/s;

    aput-object v1, v0, v5

    sput-object v0, Lss/ss/ss/s;->e:[Lss/ss/ss/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lss/ss/ss/s;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lss/ss/ss/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lss/ss/ss/s;

    return-object v0
.end method

.method public static values()[Lss/ss/ss/s;
    .registers 1

    sget-object v0, Lss/ss/ss/s;->e:[Lss/ss/ss/s;

    invoke-virtual {v0}, [Lss/ss/ss/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/s;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    sget-object v0, Lss/ss/ss/s;->b:Lss/ss/ss/s;

    if-eq p0, v0, :cond_8

    sget-object v0, Lss/ss/ss/s;->c:Lss/ss/ss/s;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Z
    .registers 2

    sget-object v0, Lss/ss/ss/s;->a:Lss/ss/ss/s;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Z
    .registers 2

    sget-object v0, Lss/ss/ss/s;->c:Lss/ss/ss/s;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    sget-object v0, Lss/ss/ss/s;->b:Lss/ss/ss/s;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
