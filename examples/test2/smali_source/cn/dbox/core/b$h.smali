.class public final enum Lcn/dbox/core/b$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$h;

.field public static final enum b:Lcn/dbox/core/b$h;

.field public static final enum c:Lcn/dbox/core/b$h;

.field public static final enum d:Lcn/dbox/core/b$h;

.field public static final enum e:Lcn/dbox/core/b$h;

.field private static final synthetic f:[Lcn/dbox/core/b$h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-instance v0, Lcn/dbox/core/b$h;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$h;->a:Lcn/dbox/core/b$h;

    new-instance v0, Lcn/dbox/core/b$h;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    new-instance v0, Lcn/dbox/core/b$h;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$h;->c:Lcn/dbox/core/b$h;

    new-instance v0, Lcn/dbox/core/b$h;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/b$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$h;->d:Lcn/dbox/core/b$h;

    new-instance v0, Lcn/dbox/core/b$h;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcn/dbox/core/b$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$h;->e:Lcn/dbox/core/b$h;

    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/dbox/core/b$h;

    sget-object v1, Lcn/dbox/core/b$h;->a:Lcn/dbox/core/b$h;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b$h;->c:Lcn/dbox/core/b$h;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/b$h;->d:Lcn/dbox/core/b$h;

    aput-object v1, v0, v5

    sget-object v1, Lcn/dbox/core/b$h;->e:Lcn/dbox/core/b$h;

    aput-object v1, v0, v6

    sput-object v0, Lcn/dbox/core/b$h;->f:[Lcn/dbox/core/b$h;

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
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$h;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lcn/dbox/core/b$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$h;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$h;
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lcn/dbox/core/b$h;->f:[Lcn/dbox/core/b$h;

    invoke-virtual {v0}, [Lcn/dbox/core/b$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$h;

    return-object v0
.end method
