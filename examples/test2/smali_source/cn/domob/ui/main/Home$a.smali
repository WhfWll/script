.class final enum Lcn/domob/ui/main/Home$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/ui/main/Home$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/ui/main/Home$a;

.field public static final enum b:Lcn/domob/ui/main/Home$a;

.field public static final enum c:Lcn/domob/ui/main/Home$a;

.field public static final enum d:Lcn/domob/ui/main/Home$a;

.field private static final synthetic e:[Lcn/domob/ui/main/Home$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    new-instance v0, Lcn/domob/ui/main/Home$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Home$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Home$a;->a:Lcn/domob/ui/main/Home$a;

    new-instance v0, Lcn/domob/ui/main/Home$a;

    const-string v1, "LOADINGVIEW"

    invoke-direct {v0, v1, v3}, Lcn/domob/ui/main/Home$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Home$a;->b:Lcn/domob/ui/main/Home$a;

    new-instance v0, Lcn/domob/ui/main/Home$a;

    const-string v1, "TABVIEW"

    invoke-direct {v0, v1, v4}, Lcn/domob/ui/main/Home$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Home$a;->c:Lcn/domob/ui/main/Home$a;

    new-instance v0, Lcn/domob/ui/main/Home$a;

    const-string v1, "ONELISTVIEW"

    invoke-direct {v0, v1, v5}, Lcn/domob/ui/main/Home$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Home$a;->d:Lcn/domob/ui/main/Home$a;

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/domob/ui/main/Home$a;

    sget-object v1, Lcn/domob/ui/main/Home$a;->a:Lcn/domob/ui/main/Home$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/ui/main/Home$a;->b:Lcn/domob/ui/main/Home$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/ui/main/Home$a;->c:Lcn/domob/ui/main/Home$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/ui/main/Home$a;->d:Lcn/domob/ui/main/Home$a;

    aput-object v1, v0, v5

    sput-object v0, Lcn/domob/ui/main/Home$a;->e:[Lcn/domob/ui/main/Home$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/ui/main/Home$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    const-class v0, Lcn/domob/ui/main/Home$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/main/Home$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/ui/main/Home$a;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcn/domob/ui/main/Home$a;->e:[Lcn/domob/ui/main/Home$a;

    invoke-virtual {v0}, [Lcn/domob/ui/main/Home$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/ui/main/Home$a;

    return-object v0
.end method
