.class public Lcom/android/settings/a/c;
.super Lcom/android/settings/a/b;
.source "InsetBoundsDrawable.java"


# instance fields
.field private final Yj:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iput p2, p0, Lcom/android/settings/a/c;->Yj:I

    .line 31
    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/a/c;->Yj:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/settings/a/c;->Yj:I

    sub-int v1, p3, v1

    invoke-super {p0, v0, p2, v1, p4}, Lcom/android/settings/a/b;->setBounds(IIII)V

    .line 36
    return-void
.end method
