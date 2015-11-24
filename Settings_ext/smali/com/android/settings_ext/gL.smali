.class Lcom/android/settings_ext/gL;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field final synthetic yG:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/settings_ext/gL;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/gL;->yG:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 628
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/gL;->yG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/settings_ext/gL;->yG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v1, p3, :cond_0

    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 628
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 629
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 631
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method
