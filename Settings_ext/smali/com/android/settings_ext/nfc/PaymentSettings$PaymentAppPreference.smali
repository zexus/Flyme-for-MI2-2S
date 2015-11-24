.class public Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# instance fields
.field private final adM:Landroid/view/View$OnClickListener;

.field private final adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 215
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 216
    iput-object p2, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    .line 217
    iput-object p3, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adM:Landroid/view/View$OnClickListener;

    .line 218
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 224
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 225
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 229
    const v0, 0x7f10016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->adH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentSettings$PaymentAppPreference;->adN:Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    return-void
.end method
