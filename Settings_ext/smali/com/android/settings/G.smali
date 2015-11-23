.class public Lcom/android/settings/G;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# instance fields
.field private bd:[Landroid/graphics/drawable/Drawable;

.field private be:I

.field final synthetic bf:Lcom/android/settings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/G;->bf:Lcom/android/settings/AppListPreference;

    .line 50
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/G;->bd:[Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/G;->be:I

    .line 51
    iput p6, p0, Lcom/android/settings/G;->be:I

    .line 52
    iput-object p5, p0, Lcom/android/settings/G;->bd:[Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/G;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    const v0, 0x7f100023

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/G;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget v1, p0, Lcom/android/settings/G;->be:I

    if-ne p1, v1, :cond_0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 64
    :cond_0
    const v0, 0x7f100022

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/android/settings/G;->bd:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-object v2
.end method
