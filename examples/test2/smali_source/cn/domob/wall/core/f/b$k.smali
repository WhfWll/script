.class public final enum Lcn/domob/wall/core/f/b$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/f/b$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/f/b$k;

.field public static final enum b:Lcn/domob/wall/core/f/b$k;

.field public static final enum c:Lcn/domob/wall/core/f/b$k;

.field public static final enum d:Lcn/domob/wall/core/f/b$k;

.field public static final enum e:Lcn/domob/wall/core/f/b$k;

.field private static final synthetic f:[Lcn/domob/wall/core/f/b$k;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcn/domob/wall/core/f/b$k;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/f/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$k;->a:Lcn/domob/wall/core/f/b$k;

    new-instance v0, Lcn/domob/wall/core/f/b$k;

    const-string v1, "BANNER_AD"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/f/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$k;->b:Lcn/domob/wall/core/f/b$k;

    new-instance v0, Lcn/domob/wall/core/f/b$k;

    const-string v1, "LIST_AD"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/f/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$k;->c:Lcn/domob/wall/core/f/b$k;

    new-instance v0, Lcn/domob/wall/core/f/b$k;

    const-string v1, "LISTAD_DOWN"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/f/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$k;->d:Lcn/domob/wall/core/f/b$k;

    new-instance v0, Lcn/domob/wall/core/f/b$k;

    const-string v1, "DETAILS_DOWN"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/f/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$k;->e:Lcn/domob/wall/core/f/b$k;

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/domob/wall/core/f/b$k;

    sget-object v1, Lcn/domob/wall/core/f/b$k;->a:Lcn/domob/wall/core/f/b$k;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/f/b$k;->b:Lcn/domob/wall/core/f/b$k;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/f/b$k;->c:Lcn/domob/wall/core/f/b$k;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/f/b$k;->d:Lcn/domob/wall/core/f/b$k;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/f/b$k;->e:Lcn/domob/wall/core/f/b$k;

    aput-object v1, v0, v6

    sput-object v0, Lcn/domob/wall/core/f/b$k;->f:[Lcn/domob/wall/core/f/b$k;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/f/b$k;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcn/domob/wall/core/f/b$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/f/b$k;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/f/b$k;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcn/domob/wall/core/f/b$k;->f:[Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v0}, [Lcn/domob/wall/core/f/b$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/f/b$k;

    return-object v0
.end method
