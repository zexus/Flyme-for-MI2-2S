.class Lcom/android/settings_ext/notification/DropDownPreference$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic adY:Lcom/android/settings_ext/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ext/notification/DropDownPreference$1;->adY:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference$1;->adY:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/notification/DropDownPreference;->setSelectedItem(I)V

    .line 59
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
