Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0543BD806
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 15:51:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0lTr-0000ia-Dp; Tue, 06 Jul 2021 13:51:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1m0lOK-0000Xz-Au
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 13:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WDsIwD8JQvmFvOYA8azuNYznFw7m1qj/mATlnoDGvVU=; b=K4QFirP0CgNShq7hgUHqrfCro
 wgm+o1EGIor4bvPS1/mr0jF4FFV9v0rv0yWWj666Mry3IGem6gOmOrsb6HEr6haH1wkFH7RlVtTkc
 OkrmJFzGgmtH6d64pvm/+r9BE8us2BhkePfIm2EuPK5MaieSpSAKZ28pRsFvrPo1Os2DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WDsIwD8JQvmFvOYA8azuNYznFw7m1qj/mATlnoDGvVU=; b=Dpaz3/xPgB6EixDnK+Ee3CQ6O1
 BPmMeOADjq7C4A8srUS29iuPMXdaM4IIcqRH5gM62hqRRHwwu+XrU8S3qDo29Ag07Vwf1yQzJqEq8
 qmm0d7x6Ev8yx1Wb7S7JzMzsqynrP5On7GekhSsl4748ocdnyy4Qx9o+fJGIdbcwkCGY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m0lO9-00CIDO-Ku
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 13:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625579119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WDsIwD8JQvmFvOYA8azuNYznFw7m1qj/mATlnoDGvVU=;
 b=cCNItpsocUgSr2UE331GghHMxYQTd6ZPBiXznaiheZfWjpBXfhjgE/AR9GJ5v2S7LShY3m
 o9cHLa7b01VrIEXEM43kDJxee0qKnuYVibm5GLNLsKuzcsGmnsx3fI+vli8YRFmiy2dT6i
 35cmEhisRVBD79M9ngXzgmcRNmtqM84=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-Fzle_20UMtaN0HTiEDBTUw-1; Tue, 06 Jul 2021 09:45:17 -0400
X-MC-Unique: Fzle_20UMtaN0HTiEDBTUw-1
Received: by mail-qt1-f199.google.com with SMTP id
 q16-20020ac845100000b0290252006e22f6so682135qtn.22
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 06:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=WDsIwD8JQvmFvOYA8azuNYznFw7m1qj/mATlnoDGvVU=;
 b=pWBVqRTitsF+OcAljUAfe+wHnP/XXPq8GPWEDW9LhiyqOhvqfE+bGCoyGrKgT2QJjB
 fQD7IAaM5HJMu/LRkJ04/5pbeQQAPe7TldF3TcW5rAiCfCm/id+o9z+oYkaqvI0TjUG2
 mpRlHtA+e93HAJTpwTYru4G64tcztGKiRST46AaqQiUCZYDI4tYudyQr5em53ntb5pie
 rsA2QO7MYsJp2CCXHgEXNsGUzf1cRGbRE0s2GrMSPS6Evyrnlh9lyXNyDRl0g+mCJefj
 sIJBQ5vst6QbwjIfsX/1xANWVakfmNxL9ZoBxXV7cFKJRNV1nPMw/OQcKkiKak7NSgO2
 7gsA==
X-Gm-Message-State: AOAM533+Wy1g4iDSqaP3oAell/f3AZpDYVdM/q8N+CTvWKxHgaTNgFJM
 Inq8tLBHyHo8WHa/zew9HD+gFUNF1xFEn/hsu6lX7s+VFxYTITTuMVDiNqH3EHFLDhR+AuKoEKo
 M5Od35ORKYaHoYegdNVAC+h8Okha7qr8jlkZLHOe2WhW60lnNKN91ajsM9zzK5ZPDyIPn3u0x+l
 ypAwPmJ84eYA==
X-Received: by 2002:ac8:1242:: with SMTP id g2mr6212626qtj.361.1625579116801; 
 Tue, 06 Jul 2021 06:45:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy++b0Qn1/kWNE83hfQMS9W9wTpgzZJQVh9h5ar2nXuXJZ8xZa7e4Qks59uKifDS7o98e3sNQ==
X-Received: by 2002:ac8:1242:: with SMTP id g2mr6212601qtj.361.1625579116558; 
 Tue, 06 Jul 2021 06:45:16 -0700 (PDT)
Received: from [192.168.0.107] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id f12sm2034148qtv.52.2021.07.06.06.45.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 06:45:16 -0700 (PDT)
To: maloy <maloy@donjonn.com>, Xin Long <lucien.xin@gmail.com>,
 Erin Shepherd <erin.shepherd@e43.eu>, tipc-discussion@lists.sourceforge.net
References: <78427.121070523575100114@us-mta-604.us.mimecast.lan>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <810667a5-13e0-07e8-b8a1-39ff5d31919c@redhat.com>
Date: Tue, 6 Jul 2021 09:45:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <78427.121070523575100114@us-mta-604.us.mimecast.lan>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m0lO9-00CIDO-Ku
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCHv2 net-next] tipc: keep the skb in rcv
 queue until the whole data is read
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA3LzUvMjEgMTE6NTcgUE0sIG1hbG95IHdyb3RlOgo+Cj4KPgo+Cj4gU2VudCBmcm9tIG15
IEdhbGF4eQo+Cj4KPiAtLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tCj4gRnJvbTog
WGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPgo+IERhdGU6IDIwMjEtMDYtMzAgMjA6MjEg
KEdNVC0wNTowMCkKPiBUbzogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4sIEVyaW4gU2hl
cGhlcmQgCj4gPGVyaW4uc2hlcGhlcmRAZTQzLmV1PiwgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldAo+IFN1YmplY3Q6IFt0aXBjLWRpc2N1c3Npb25dIFtQQVRDSHYyIG5ldC1u
ZXh0XSB0aXBjOiBrZWVwIHRoZSBza2IgaW4gCj4gcmN2IHF1ZXVlIHVudGlsIHRoZSB3aG9sZSBk
YXRhIGlzIHJlYWQKPgo+IEN1cnJlbnRseSwgd2hlbiB1c2Vyc3BhY2UgcmVhZHMgYSBkYXRhZ3Jh
bSB3aXRoIGEgYnVmZmVyIHRoYXQgaXMKPiBzbWFsbGVyIHRoYW4gdGhpcyBkYXRhZ3JhbSwgdGhl
IGRhdGEgd2lsbCBiZSB0cnVuY2F0ZWQgYW5kIG9ubHkKPiBwYXJ0IG9mIGl0IGNhbiBiZSByZWNl
aXZlZCBieSB1c2Vycy4gSXQgZG9lc24ndCBzZWVtIHJpZ2h0IHRoYXQKPiB1c2VycyBkb24ndCBr
bm93IHRoZSBkYXRhZ3JhbSBzaXplIGFuZCBoYXZlIHRvIHVzZSBhIGh1Z2UgYnVmZmVyCj4gdG8g
cmVhZCBpdCB0byBhdm9pZCB0aGUgdHJ1bmNhdGlvbi4KPgo+IFRoaXMgcGF0Y2ggdG8gZml4IGl0
IGJ5IGtlZXBpbmcgdGhlIHNrYiBpbiByY3YgcXVldWUgdW50aWwgdGhlCj4gd2hvbGUgZGF0YSBp
cyByZWFkIGJ5IHVzZXJzLiBPbmx5IHRoZSBsYXN0IG1zZyBvZiB0aGUgZGF0YWdyYW0KPiB3aWxs
IGJlIG1hcmtlZCB3aXRoIE1TR19FT1IsIGp1c3QgYXMgVENQL1NDVFAgZG9lcy4KPgo+IE5vdGUg
dGhhdCB0aGlzIHdpbGwgd29yayBhcyBhYm92ZSBvbmx5IHdoZW4gTVNHX0VPUiBpcyBzZXQgaW4g
dGhlCj4gZmxhZ3MgcGFyYW1ldGVyIG9mIHJlY3Ztc2coKSwgc28gdGhhdCBpdCB3b24ndCBicmVh
ayBhbnkgb2xkIHVzZXIKPiBhcHBsaWNhdGlvbnMuCj4KPiB2MS0+djI6Cj4gwqAgLSBUbyBlbmFi
bGUgdGhpcyBvbmx5IHdoZW4gdGhlIGZsYWdzIHdpdGggTVNHX0VPUiBpcyBwYXNzZWQgaW50bwo+
IMKgwqDCoCByZWN2bXNnKCkgdG8gZml4IHRoZSBjb21wYXRpYmlsaXR5IGlzc3N1ZSBhcyBFcmlu
IG5vdGljZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5j
b20+Cj4gLS0tCj4gbmV0L3RpcGMvc29ja2V0LmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgOSBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9zb2NrZXQuYyBiL25ldC90aXBjL3Nv
Y2tldC5jCj4gaW5kZXggMzRhOTdlYTM2Y2M4Li45YjBiMzExYzdlYzEgMTAwNjQ0Cj4gLS0tIGEv
bmV0L3RpcGMvc29ja2V0LmMKPiArKysgYi9uZXQvdGlwYy9zb2NrZXQuYwo+IEBAIC0xODgwLDYg
KzE4ODAsNyBAQCBzdGF0aWMgaW50IHRpcGNfcmVjdm1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2NrLCAK
PiBzdHJ1Y3QgbXNnaGRyICptLAo+IGJvb2wgY29ubmVjdGVkID0gIXRpcGNfc2tfdHlwZV9jb25u
ZWN0aW9ubGVzcyhzayk7Cj4gc3RydWN0IHRpcGNfc29jayAqdHNrID0gdGlwY19zayhzayk7Cj4g
aW50IHJjLCBlcnIsIGhsZW4sIGRsZW4sIGNvcHk7Cj4gKyBzdHJ1Y3QgdGlwY19za2JfY2IgKnNr
Yl9jYjsKPiBzdHJ1Y3Qgc2tfYnVmZl9oZWFkIHhtaXRxOwo+IHN0cnVjdCB0aXBjX21zZyAqaGRy
Owo+IHN0cnVjdCBza19idWZmICpza2I7Cj4gQEAgLTE5MDMsNiArMTkwNCw3IEBAIHN0YXRpYyBp
bnQgdGlwY19yZWN2bXNnKHN0cnVjdCBzb2NrZXQgKnNvY2ssIAo+IHN0cnVjdCBtc2doZHIgKm0s
Cj4gaWYgKHVubGlrZWx5KHJjKSkKPiBnb3RvIGV4aXQ7Cj4gc2tiID0gc2tiX3BlZWsoJnNrLT5z
a19yZWNlaXZlX3F1ZXVlKTsKPiArIHNrYl9jYiA9IFRJUENfU0tCX0NCKHNrYik7Cj4gaGRyID0g
YnVmX21zZyhza2IpOwo+IGRsZW4gPSBtc2dfZGF0YV9zeihoZHIpOwo+IGhsZW4gPSBtc2dfaGRy
X3N6KGhkcik7Cj4gQEAgLTE5MjIsMTggKzE5MjQsMzMgQEAgc3RhdGljIGludCB0aXBjX3JlY3Zt
c2coc3RydWN0IHNvY2tldCAqc29jaywgCj4gc3RydWN0IG1zZ2hkciAqbSwKPgo+IC8qIENhcHR1
cmUgZGF0YSBpZiBub24tZXJyb3IgbXNnLCBvdGhlcndpc2UganVzdCBzZXQgcmV0dXJuIHZhbHVl
ICovCj4gaWYgKGxpa2VseSghZXJyKSkgewo+IC0gY29weSA9IG1pbl90KGludCwgZGxlbiwgYnVm
bGVuKTsKPiAtIGlmICh1bmxpa2VseShjb3B5ICE9IGRsZW4pKQo+IC0gbS0+bXNnX2ZsYWdzIHw9
IE1TR19UUlVOQzsKPiAtIHJjID0gc2tiX2NvcHlfZGF0YWdyYW1fbXNnKHNrYiwgaGxlbiwgbSwg
Y29weSk7Cj4gKyBpbnQgb2Zmc2V0ID0gc2tiX2NiLT5ieXRlc19yZWFkOwo+ICsKPiArIGNvcHkg
PSBtaW5fdChpbnQsIGRsZW4gLSBvZmZzZXQsIGJ1Zmxlbik7Cj4gKyByYyA9IHNrYl9jb3B5X2Rh
dGFncmFtX21zZyhza2IsIGhsZW4gKyBvZmZzZXQsIG0sIGNvcHkpOwo+ICsgaWYgKHVubGlrZWx5
KHJjKSkKPiArIGdvdG8gZXhpdDsKPiArIGlmICh1bmxpa2VseShvZmZzZXQgKyBjb3B5IDwgZGxl
bikpIHsKPiArIGlmIChmbGFncyAmIE1TR19FT1IpIHsKPiArIGlmICghKGZsYWdzICYgTVNHX1BF
RUspKQo+ICsgc2tiX2NiLT5ieXRlc19yZWFkID0gb2Zmc2V0ICsgY29weTsKPiArIH0gZWxzZSB7
Cj4gKyBtLT5tc2dfZmxhZ3MgfD0gTVNHX1RSVU5DOwo+ICsgc2tiX2NiLT5ieXRlc19yZWFkID0g
MDsKPiArIH0KPiArIH0gZWxzZSB7Cj4gKyBpZiAoZmxhZ3MgJiBNU0dfRU9SKQo+ICsgbS0+bXNn
X2ZsYWdzIHw9IE1TR19FT1I7Cj4gKyBza2JfY2ItPmJ5dGVzX3JlYWQgPSAwOwo+ICsgfQo+IH0g
ZWxzZSB7Cj4gY29weSA9IDA7Cj4gcmMgPSAwOwo+IC0gaWYgKGVyciAhPSBUSVBDX0NPTk5fU0hV
VERPV04gJiYgY29ubmVjdGVkICYmICFtLT5tc2dfY29udHJvbCkKPiArIGlmIChlcnIgIT0gVElQ
Q19DT05OX1NIVVRET1dOICYmIGNvbm5lY3RlZCAmJiAhbS0+bXNnX2NvbnRyb2wpIHsKPiByYyA9
IC1FQ09OTlJFU0VUOwo+ICsgZ290byBleGl0Owo+ICsgfQo+IH0KPiAtIGlmICh1bmxpa2VseShy
YykpCj4gLSBnb3RvIGV4aXQ7Cj4KPiAvKiBNYXJrIG1lc3NhZ2UgYXMgZ3JvdXAgZXZlbnQgaWYg
YXBwbGljYWJsZSAqLwo+IGlmICh1bmxpa2VseShncnBfZXZ0KSkgewo+IEBAIC0xOTU2LDkgKzE5
NzMsMTAgQEAgc3RhdGljIGludCB0aXBjX3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgCj4g
c3RydWN0IG1zZ2hkciAqbSwKPiB0aXBjX25vZGVfZGlzdHJfeG1pdChzb2NrX25ldChzayksICZ4
bWl0cSk7Cj4gfQo+Cj4gLSB0c2tfYWR2YW5jZV9yeF9xdWV1ZShzayk7Cj4gKyBpZiAoIXNrYl9j
Yi0+Ynl0ZXNfcmVhZCkKPiArIHRza19hZHZhbmNlX3J4X3F1ZXVlKHNrKTsKPgo+IC0gaWYgKGxp
a2VseSghY29ubmVjdGVkKSkKPiArIGlmIChsaWtlbHkoIWNvbm5lY3RlZCkgfHwgc2tiX2NiLT5i
eXRlc19yZWFkKQo+IGdvdG8gZXhpdDsKPgo+IC8qIFNlbmQgY29ubmVjdGlvbiBmbG93IGNvbnRy
b2wgYWR2ZXJ0aXNlbWVudCB3aGVuIGFwcGxpY2FibGUgKi8KPiAtLSAKPiAyLjI3LjAKPgo+Cj4g
U2lnbmVkLW9mZi1ieTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4KQWNrZWQtYnksIG9m
IGNvdXJzZSA7LSkKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IHRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiB0aXBjLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
