.class public final enum Lcn/dbox/core/a/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/a/b$a;

.field public static final enum b:Lcn/dbox/core/a/b$a;

.field public static final enum c:Lcn/dbox/core/a/b$a;

.field private static final synthetic d:[Lcn/dbox/core/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcn/dbox/core/a/b$a;

    const-string v1, "NORE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/a/b$a;->a:Lcn/dbox/core/a/b$a;

    new-instance v0, Lcn/dbox/core/a/b$a;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/a/b$a;->b:Lcn/dbox/core/a/b$a;

    new-instance v0, Lcn/dbox/core/a/b$a;

    const-string v1, "PRESENT"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/a/b$a;->c:Lcn/dbox/core/a/b$a;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/dbox/core/a/b$a;

    sget-object v1, Lcn/dbox/core/a/b$a;->a:Lcn/dbox/core/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/a/b$a;->b:Lcn/dbox/core/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/a/b$a;->c:Lcn/dbox/core/a/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcn/dbox/core/a/b$a;->d:[Lcn/dbox/core/a/b$a;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/a/b$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcn/dbox/core/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/a/b$a;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/a/b$a;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcn/dbox/core/a/b$a;->d:[Lcn/dbox/core/a/b$a;

    invoke-virtual {v0}, [Lcn/dbox/core/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/a/b$a;

    return-object v0
.end method
