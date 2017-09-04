.class final enum Lcn/domob/ui/item/AppListItem$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/AppListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/ui/item/AppListItem$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/ui/item/AppListItem$b;

.field public static final enum b:Lcn/domob/ui/item/AppListItem$b;

.field private static final synthetic c:[Lcn/domob/ui/item/AppListItem$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcn/domob/ui/item/AppListItem$b;

    const-string v1, "LISTITEM"

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/item/AppListItem$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/item/AppListItem$b;->a:Lcn/domob/ui/item/AppListItem$b;

    .line 101
    new-instance v0, Lcn/domob/ui/item/AppListItem$b;

    const-string v1, "DETAILS"

    invoke-direct {v0, v1, v3}, Lcn/domob/ui/item/AppListItem$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/item/AppListItem$b;->b:Lcn/domob/ui/item/AppListItem$b;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/domob/ui/item/AppListItem$b;

    sget-object v1, Lcn/domob/ui/item/AppListItem$b;->a:Lcn/domob/ui/item/AppListItem$b;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/ui/item/AppListItem$b;->b:Lcn/domob/ui/item/AppListItem$b;

    aput-object v1, v0, v3

    sput-object v0, Lcn/domob/ui/item/AppListItem$b;->c:[Lcn/domob/ui/item/AppListItem$b;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/ui/item/AppListItem$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcn/domob/ui/item/AppListItem$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem$b;

    return-object v0
.end method

.method public static values()[Lcn/domob/ui/item/AppListItem$b;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcn/domob/ui/item/AppListItem$b;->c:[Lcn/domob/ui/item/AppListItem$b;

    invoke-virtual {v0}, [Lcn/domob/ui/item/AppListItem$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/ui/item/AppListItem$b;

    return-object v0
.end method
