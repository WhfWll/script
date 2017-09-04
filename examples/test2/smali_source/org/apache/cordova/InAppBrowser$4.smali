.class Lorg/apache/cordova/InAppBrowser$4;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;

.field final synthetic val$thatWebView:Lorg/apache/cordova/CordovaWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V
    .registers 4

    .prologue
    .line 336
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/InAppBrowser$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/InAppBrowser$4;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dpToPixels(I)I
    .registers 6
    .param p1, "dipValue"    # I

    .prologue
    .line 343
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    iget-object v3, v3, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 348
    .local v0, "value":I
    return v0
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    new-instance v20, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1030006

    invoke-direct/range {v20 .. v22}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v20}, Lorg/apache/cordova/InAppBrowser;->access$102(Lorg/apache/cordova/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    const v20, 0x1030002

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    new-instance v20, Lorg/apache/cordova/InAppBrowser$4$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4$1;-><init>(Lorg/apache/cordova/InAppBrowser$4;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 372
    .local v15, "main":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 376
    .local v18, "toolbar":Landroid/widget/RelativeLayout;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4;->dpToPixels(I)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4;->dpToPixels(I)I

    move-result v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4;->dpToPixels(I)I

    move-result v20

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4;->dpToPixels(I)I

    move-result v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4;->dpToPixels(I)I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 378
    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 379
    const/16 v19, 0x30

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 382
    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .local v3, "actionButtonContainer":Landroid/widget/RelativeLayout;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 385
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 386
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 389
    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 390
    .local v5, "back":Landroid/widget/Button;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 391
    .local v6, "backLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 392
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    const-string v19, "Back Button"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setId(I)V

    .line 395
    const-string v19, "<"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 396
    new-instance v19, Lorg/apache/cordova/InAppBrowser$4$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4$2;-><init>(Lorg/apache/cordova/InAppBrowser$4;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 404
    .local v12, "forward":Landroid/widget/Button;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    .local v13, "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    const-string v19, "Forward Button"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 408
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setId(I)V

    .line 409
    const-string v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    new-instance v19, Lorg/apache/cordova/InAppBrowser$4$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4$3;-><init>(Lorg/apache/cordova/InAppBrowser$4;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    # setter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v20}, Lorg/apache/cordova/InAppBrowser;->access$502(Lorg/apache/cordova/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 418
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 419
    .local v17, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 420
    const/16 v19, 0x0

    const/16 v20, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setId(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setInputType(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setInputType(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    new-instance v20, Lorg/apache/cordova/InAppBrowser$4$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4$4;-><init>(Lorg/apache/cordova/InAppBrowser$4;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 440
    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 441
    .local v8, "close":Landroid/widget/Button;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 442
    .local v9, "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 443
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    const-string v19, "Close Button"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setId(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$700(Lorg/apache/cordova/InAppBrowser;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    new-instance v19, Lorg/apache/cordova/InAppBrowser$4$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/InAppBrowser$4$5;-><init>(Lorg/apache/cordova/InAppBrowser$4;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    new-instance v20, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v20}, Lorg/apache/cordova/InAppBrowser;->access$002(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;-><init>(Lorg/apache/cordova/InAppBrowser;)V

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 457
    new-instance v7, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v21, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v21 .. v21}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;-><init>(Lorg/apache/cordova/InAppBrowser;Lorg/apache/cordova/CordovaWebView;Landroid/widget/EditText;)V

    .line 458
    .local v7, "client":Landroid/webkit/WebViewClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v16

    .line 460
    .local v16, "settings":Landroid/webkit/WebSettings;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 461
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 462
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 468
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 472
    .local v4, "appSettings":Landroid/os/Bundle;
    if-nez v4, :cond_4ea

    const/4 v11, 0x1

    .line 473
    .local v11, "enableDatabase":Z
    :goto_3ba
    if-eqz v11, :cond_3ea

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "inAppBrowserDB"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, "databasePath":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 477
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 479
    .end local v10    # "databasePath":Ljava/lang/String;
    :cond_3ea
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setId(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->requestFocus()Z

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 489
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 490
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 493
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 495
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # invokes: Lorg/apache/cordova/InAppBrowser;->getShowLocationBar()Z
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$900(Lorg/apache/cordova/InAppBrowser;)Z

    move-result v19

    if-eqz v19, :cond_483

    .line 500
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    :cond_483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v14}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 507
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 508
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 509
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->show()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 514
    return-void

    .line 472
    .end local v11    # "enableDatabase":Z
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4ea
    const-string v19, "InAppBrowserStorageEnabled"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    goto/16 :goto_3ba
.end method
