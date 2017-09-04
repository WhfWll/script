.class final enum Lss/y$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lss/y$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lss/y$a$a;

.field public static final enum b:Lss/y$a$a;

.field public static final enum c:Lss/y$a$a;

.field public static final enum d:Lss/y$a$a;

.field public static final enum e:Lss/y$a$a;

.field private static final synthetic f:[Lss/y$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lss/y$a$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lss/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/y$a$a;->a:Lss/y$a$a;

    new-instance v0, Lss/y$a$a;

    const-string v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lss/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/y$a$a;->b:Lss/y$a$a;

    new-instance v0, Lss/y$a$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lss/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/y$a$a;->c:Lss/y$a$a;

    new-instance v0, Lss/y$a$a;

    const-string v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lss/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/y$a$a;->d:Lss/y$a$a;

    new-instance v0, Lss/y$a$a;

    const-string v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lss/y$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/y$a$a;->e:Lss/y$a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lss/y$a$a;

    sget-object v1, Lss/y$a$a;->a:Lss/y$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lss/y$a$a;->b:Lss/y$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lss/y$a$a;->c:Lss/y$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lss/y$a$a;->d:Lss/y$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lss/y$a$a;->e:Lss/y$a$a;

    aput-object v1, v0, v6

    sput-object v0, Lss/y$a$a;->f:[Lss/y$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lss/y$a$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lss/y$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lss/y$a$a;

    return-object v0
.end method

.method public static values()[Lss/y$a$a;
    .registers 1

    sget-object v0, Lss/y$a$a;->f:[Lss/y$a$a;

    invoke-virtual {v0}, [Lss/y$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/y$a$a;

    return-object v0
.end method
