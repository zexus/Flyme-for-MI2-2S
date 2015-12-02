.class public Lcom/android/camera/ui/V6TitleImageView;
.super Landroid/widget/RelativeLayout;
.source "V6TitleImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mTitle:Lcom/android/camera/ui/RotateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TitleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6TitleImageView;->mTitle:Lcom/android/camera/ui/RotateTextView;

    .line 28
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6TitleImageView;->mTitle:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateTextView;->setOrientation(IZ)V

    .line 33
    return-void
.end method
