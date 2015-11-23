.class public Lcom/android/settings/display/PaperModePreference;
.super Lmiui/preference/RadioButtonPreference;
.source "PaperModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private VJ:Z

.field private VK:Lcom/android/settings/display/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/PaperModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/PaperModePreference;->VK:Lcom/android/settings/display/z;

    .line 20
    const v0, 0x7f0400c8

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModePreference;->setWidgetLayoutResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/display/z;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/display/PaperModePreference;->VK:Lcom/android/settings/display/z;

    .line 37
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 30
    const v0, 0x7f1001d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-boolean v1, p0, Lcom/android/settings/display/PaperModePreference;->VJ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    return-void

    .line 32
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/display/PaperModePreference;->VK:Lcom/android/settings/display/z;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/display/PaperModePreference;->VK:Lcom/android/settings/display/z;

    invoke-interface {v0, p0}, Lcom/android/settings/display/z;->a(Lmiui/preference/RadioButtonPreference;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/display/PaperModePreference;->VJ:Z

    .line 48
    return-void
.end method
