.class public final enum Lcn/dbox/core/b$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$d;

.field public static final enum b:Lcn/dbox/core/b$d;

.field public static final enum c:Lcn/dbox/core/b$d;

.field public static final enum d:Lcn/dbox/core/b$d;

.field public static final enum e:Lcn/dbox/core/b$d;

.field private static final synthetic f:[Lcn/dbox/core/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    new-instance v0, Lcn/dbox/core/b$d;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$d;->a:Lcn/dbox/core/b$d;

    new-instance v0, Lcn/dbox/core/b$d;

    const-string v1, "BANNER_AD"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$d;->b:Lcn/dbox/core/b$d;

    new-instance v0, Lcn/dbox/core/b$d;

    const-string v1, "LIST_AD"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    new-instance v0, Lcn/dbox/core/b$d;

    const-string v1, "LISTAD_DOWN"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$d;->d:Lcn/dbox/core/b$d;

    new-instance v0, Lcn/dbox/core/b$d;

    const-string v1, "DETAILS_DOWN"

    invoke-direct {v0, v1, v6}, Lcn/dbox/core/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$d;->e:Lcn/dbox/core/b$d;

    .line 236
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/dbox/core/b$d;

    sget-object v1, Lcn/dbox/core/b$d;->a:Lcn/dbox/core/b$d;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b$d;->b:Lcn/dbox/core/b$d;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/b$d;->d:Lcn/dbox/core/b$d;

    aput-object v1, v0, v5

    sget-object v1, Lcn/dbox/core/b$d;->e:Lcn/dbox/core/b$d;

    aput-object v1, v0, v6

    sput-object v0, Lcn/dbox/core/b$d;->f:[Lcn/dbox/core/b$d;

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
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$d;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const-class v0, Lcn/dbox/core/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$d;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$d;
    .registers 1

    .prologue
    .line 236
    sget-object v0, Lcn/dbox/core/b$d;->f:[Lcn/dbox/core/b$d;

    invoke-virtual {v0}, [Lcn/dbox/core/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$d;

    return-object v0
.end method
