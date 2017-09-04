.class public final enum Lcn/dbox/core/b$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$e;

.field public static final enum b:Lcn/dbox/core/b$e;

.field public static final enum c:Lcn/dbox/core/b$e;

.field private static final synthetic d:[Lcn/dbox/core/b$e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lcn/dbox/core/b$e;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$e;->a:Lcn/dbox/core/b$e;

    new-instance v0, Lcn/dbox/core/b$e;

    const-string v1, "SLIDE"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$e;->b:Lcn/dbox/core/b$e;

    new-instance v0, Lcn/dbox/core/b$e;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/dbox/core/b$e;

    sget-object v1, Lcn/dbox/core/b$e;->a:Lcn/dbox/core/b$e;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b$e;->b:Lcn/dbox/core/b$e;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    aput-object v1, v0, v4

    sput-object v0, Lcn/dbox/core/b$e;->d:[Lcn/dbox/core/b$e;

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
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$e;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    const-class v0, Lcn/dbox/core/b$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$e;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$e;
    .registers 1

    .prologue
    .line 262
    sget-object v0, Lcn/dbox/core/b$e;->d:[Lcn/dbox/core/b$e;

    invoke-virtual {v0}, [Lcn/dbox/core/b$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$e;

    return-object v0
.end method
