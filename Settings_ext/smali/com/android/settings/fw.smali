.class Lcom/android/settings/fw;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uy:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/fw;->uy:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/fw;->uy:Lcom/android/settings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings/ProxySelector;->fU()V

    .line 266
    return-void
.end method
