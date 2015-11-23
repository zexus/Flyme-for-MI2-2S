.class Lcom/android/settings/wifi/aZ;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axK:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/wifi/aZ;->axK:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/aZ;->axK:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsFragment;->finish()V

    .line 160
    return-void
.end method
