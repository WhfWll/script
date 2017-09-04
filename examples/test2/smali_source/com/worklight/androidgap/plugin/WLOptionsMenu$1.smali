.class Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;
.super Ljava/lang/Object;
.source "WLOptionsMenu.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/worklight/androidgap/plugin/WLMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WLOptionsMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;

    const v1, 0x477

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/WLOptionsMenu;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;->this$0:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native compare(Lcom/worklight/androidgap/plugin/WLMenuItem;Lcom/worklight/androidgap/plugin/WLMenuItem;)I
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;->compare(Lcom/worklight/androidgap/plugin/WLMenuItem;Lcom/worklight/androidgap/plugin/WLMenuItem;)I

    move-result v0

    return v0
.end method
