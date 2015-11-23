.class Lcom/android/settings/cI;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mE:Lcom/android/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/cI;->mE:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/android/settings/cI;->mE:Lcom/android/settings/HomeSettings;

    iget-object v2, p0, Lcom/android/settings/cI;->mE:Lcom/android/settings/HomeSettings;

    invoke-static {v2}, Lcom/android/settings/HomeSettings;->b(Lcom/android/settings/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cL;

    invoke-virtual {v1, v0}, Lcom/android/settings/HomeSettings;->b(Lcom/android/settings/cL;)V

    .line 113
    return-void
.end method
