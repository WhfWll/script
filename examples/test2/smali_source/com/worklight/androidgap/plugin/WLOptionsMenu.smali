.class public Lcom/worklight/androidgap/plugin/WLOptionsMenu;
.super Ljava/lang/Object;
.source "WLOptionsMenu.java"


# instance fields
.field private activity:Lcom/worklight/androidgap/WLDroidGap;

.field private hasChanged:Z

.field private isEnabled:Z

.field private isInit:Z

.field private isVisible:Z

.field private itemIndexer:I

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/worklight/androidgap/plugin/WLMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private skinName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    const v1, 0x478

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .registers 4
    .param p1, "activity"    # Lcom/worklight/androidgap/WLDroidGap;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isInit:Z

    .line 31
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible:Z

    .line 33
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    .line 34
    iput v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    .line 35
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->skinName:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->activity:Lcom/worklight/androidgap/WLDroidGap;

    .line 38
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->activity:Lcom/worklight/androidgap/WLDroidGap;

    .line 43
    return-void
.end method

.method private native getItemByJavaScriptId(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method private native setChanged()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method


# virtual methods
.method public native addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native getItem(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native getItemById(I)Lcom/worklight/androidgap/plugin/WLMenuItem;
.end method

.method public native getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/worklight/androidgap/plugin/WLMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public native getSkinName()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native hasChanged()Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native init()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native isEnabled()Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native isInit()Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native isVisible()Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native removeItem(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native removeItems()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native setEnabled(Z)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native setVisible(Z)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native unsetChanged()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method
