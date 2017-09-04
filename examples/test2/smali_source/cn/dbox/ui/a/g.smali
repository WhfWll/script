.class public abstract Lcn/dbox/ui/a/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/g$b;,
        Lcn/dbox/ui/a/g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Lcn/dbox/ui/a/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcn/dbox/ui/a/g;->a:I

    .line 42
    iput-object p1, p0, Lcn/dbox/ui/a/g;->b:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;I)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/dbox/ui/a/g;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    .line 169
    :goto_c
    const/4 v0, 0x3

    if-ge v1, v0, :cond_49

    .line 170
    mul-int/lit8 v0, p1, 0x3

    add-int v4, v0, v1

    .line 173
    invoke-virtual {p0}, Lcn/dbox/ui/a/g;->a()I

    move-result v0

    if-ge v4, v0, :cond_3d

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, p2}, Lcn/dbox/ui/a/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0, v4, v0, p2}, Lcn/dbox/ui/a/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 177
    new-instance v6, Lcn/dbox/ui/a/g$b;

    invoke-direct {v6, p0, v4}, Lcn/dbox/ui/a/g$b;-><init>(Lcn/dbox/ui/a/g;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :goto_2d
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 185
    iput p3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 179
    :cond_3d
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcn/dbox/ui/a/g;->b:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 188
    :cond_49
    return-object v3
.end method

.method static synthetic a(Lcn/dbox/ui/a/g;)Lcn/dbox/ui/a/g$a;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/dbox/ui/a/g;->c:Lcn/dbox/ui/a/g$a;

    return-object v0
.end method

.method private a(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 193
    move v1, v2

    :goto_2
    const/4 v0, 0x3

    if-ge v1, v0, :cond_46

    .line 194
    mul-int/lit8 v0, p1, 0x3

    add-int v3, v0, v1

    .line 195
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-nez v0, :cond_19

    .line 197
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcn/dbox/ui/a/g;->b:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 202
    iput p4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p0}, Lcn/dbox/ui/a/g;->a()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v3, v0, p2}, Lcn/dbox/ui/a/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 209
    new-instance v5, Lcn/dbox/ui/a/g$b;

    invoke-direct {v5, p0, v3}, Lcn/dbox/ui/a/g$b;-><init>(Lcn/dbox/ui/a/g;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 193
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 214
    :cond_41
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 217
    :cond_46
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final a(Lcn/dbox/ui/a/g$a;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/dbox/ui/a/g;->c:Lcn/dbox/ui/a/g$a;

    .line 47
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/dbox/ui/a/g;->a()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    if-eqz p3, :cond_1a

    .line 147
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 153
    :cond_13
    :goto_13
    if-nez p2, :cond_2d

    .line 155
    invoke-direct {p0, p1, p3, v0}, Lcn/dbox/ui/a/g;->a(ILandroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 160
    .end local p2    # "view":Landroid/view/View;
    :goto_19
    return-object p2

    .line 149
    .restart local p2    # "view":Landroid/view/View;
    :cond_1a
    if-eqz p2, :cond_13

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_13

    .line 157
    :cond_2d
    check-cast p2, Landroid/widget/LinearLayout;

    .line 158
    .end local p2    # "view":Landroid/view/View;
    invoke-direct {p0, p1, p3, p2, v0}, Lcn/dbox/ui/a/g;->a(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;I)V

    goto :goto_19
.end method
