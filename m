Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ADC3B78F1
	for <lists+tipc-discussion@lfdr.de>; Tue, 29 Jun 2021 21:57:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lyJrX-0007Qe-2W; Tue, 29 Jun 2021 19:57:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lyJrV-0007QP-Kn
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Jun 2021 19:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4VAjZN6Ht4pqF3Ur2loDfPMJzztt2PHYznGNGua1uME=; b=Q/8u7iZDruQxAemuz5D2bgDd8O
 sqa1gTwO04vZgBKclpIXY7FaMsEHF2u1ka4fMj/hxSDjyCYFt0asu0jG/2WuRciQhUfvHy6kJjCwT
 wXUTxS2P1oIwODL8LmGqHngvbjkDKgDfv2F6bGwOTGUgOy6SjQY/r9NZ3jc2HOu5NdnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4VAjZN6Ht4pqF3Ur2loDfPMJzztt2PHYznGNGua1uME=; b=acEeZViyfGQJBbCiNaiZ1ZR5h/
 Neqf/zqoYvw7ke6C0/J0t+K1/UEPEQMm9qHtuAHhEKpp1/g4uIw67aRfCiHkxOdXyV2LcJOqRNSn9
 NnSDg2eGuqqhHZwLL+7nOmqUuYpSTiJPsa9UUNMTBXiZUQQ2WaEqxShWOH/DcGUcWI28=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lyJrK-0001Tt-SQ
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Jun 2021 19:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624996640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4VAjZN6Ht4pqF3Ur2loDfPMJzztt2PHYznGNGua1uME=;
 b=KlmEsC3PvzNVM2+XUOugfzsz3Pb+lEPDavPavEwLKh/aufMtTnRztWUy03SWuUGPz06rWN
 Cmi69eoEWjlo7UvvlMelmYICqyh9RIiSCuvghg0IvQNrt9F3Q6OQL6H6W+bVn5my6ZNaAW
 vJYbJAQLS6xMSDpzVMj7h7K678O+XlQ=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-ghQq6Z0UNhaxC17TE7SM2g-1; Tue, 29 Jun 2021 15:57:18 -0400
X-MC-Unique: ghQq6Z0UNhaxC17TE7SM2g-1
Received: by mail-qk1-f199.google.com with SMTP id
 i3-20020a05620a1503b02903b2ffa0a87fso20251676qkk.18
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 29 Jun 2021 12:57:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4VAjZN6Ht4pqF3Ur2loDfPMJzztt2PHYznGNGua1uME=;
 b=qReQDp1MIZA9cxUWfxC6GDT9AXKeDeCaYMFiLLD3B0o8iXh/7oilnU7MOHjlGEYx9Q
 +Q7moytd5IMvEaUjztJDu4z6BfV0OtY+tFSvsk7VnbvAlmhV6injHkhrlCBLCVMUvv8Z
 /w3TLi/SBZItmHDBJ9t5d6ftOetWZ0ehMJdAZyvCX0gelhu5haTQbnAGeCvo2XdQvvpA
 +F52L1rC0QoFDYZTodGVMK6EevBtmqdJIglGmgmX/h2vrRKXSVXncRZSiGQ9NUk2x2LI
 fVVWU5fMtg80vRbj7AzRGl0h/aVYAWrhTJd4l/RHosVTMoIk3zwuX/h2jGvpzD/6JNgj
 5VTQ==
X-Gm-Message-State: AOAM5313rPlMhjEF7zw5pceyh30QcVglCBBrrfL36JQ0VSOEyaoE58KA
 bxbBhQx4bJQLMvGxzGZ/RNv4ZWDb93PB4lmtSWe5nrkM03+fnUMI68L5ZJXyuLBky28IN4JHyRv
 BjYvHbwIUyQ91YTBcqDuPvCeGnBmMZEHwjLFE2+eVZO3W2KdjZ2l8UW5comvaJ46Cs+0hyszl+c
 z17dF7JboZOA==
X-Received: by 2002:a05:620a:cf7:: with SMTP id
 c23mr17841092qkj.1.1624996638253; 
 Tue, 29 Jun 2021 12:57:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMly47Mw0gUKqAvNIddCRk498z8Y6T3uHMsBlTWmnpBC/DRXwchf7nVhiEsIWZTnzH+2HMMQ==
X-Received: by 2002:a05:620a:cf7:: with SMTP id
 c23mr17841071qkj.1.1624996637969; 
 Tue, 29 Jun 2021 12:57:17 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id 28sm8215835qkp.67.2021.06.29.12.57.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Jun 2021 12:57:17 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, Erin Shepherd <erin.shepherd@e43.eu>
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
 <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com>
Date: Tue, 29 Jun 2021 15:57:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: e43.eu]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lyJrK-0001Tt-SQ
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: keep the skb in rcv
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Ck9uIDI4LzA2LzIwMjEgMTU6MTYsIFhpbiBMb25nIHdyb3RlOgo+IE9uIE1vbiwgSnVuIDI4LCAy
MDIxIGF0IDM6MDMgUE0gWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPiB3cm90ZToKPj4g
T24gU3VuLCBKdW4gMjcsIDIwMjEgYXQgMzo0NCBQTSBFcmluIFNoZXBoZXJkIDxlcmluLnNoZXBo
ZXJkQGU0My5ldT4gd3JvdGU6Cj4+PiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+IHdy
aXRlczoKPj4+Cj4+Pj4gQ3VycmVudGx5LCB3aGVuIHVzZXJzcGFjZSByZWFkcyBhIGRhdGFncmFt
IHdpdGggYSBidWZmZXIgdGhhdCBpcwo+Pj4+IHNtYWxsZXIgdGhhbiB0aGlzIGRhdGFncmFtLCB0
aGUgZGF0YSB3aWxsIGJlIHRydW5jYXRlZCBhbmQgb25seQo+Pj4+IHBhcnQgb2YgaXQgY2FuIGJl
IHJlY2VpdmVkIGJ5IHVzZXJzLiBJdCBkb2Vzbid0IHNlZW0gcmlnaHQgdGhhdAo+Pj4+IHVzZXJz
IGRvbid0IGtub3cgdGhlIGRhdGFncmFtIHNpemUgYW5kIGhhdmUgdG8gdXNlIGEgaHVnZSBidWZm
ZXIKPj4+PiB0byByZWFkIGl0IHRvIGF2b2lkIHRoZSB0cnVuY2F0aW9uLgo+Pj4+Cj4+Pj4gVGhp
cyBwYXRjaCB0byBmaXggaXQgYnkga2VlcGluZyB0aGUgc2tiIGluIHJjdiBxdWV1ZSB1bnRpbCB0
aGUKPj4+PiB3aG9sZSBkYXRhIGlzIHJlYWQgYnkgdXNlcnMuIE9ubHkgdGhlIGxhc3QgbXNnIG9m
IHRoZSBkYXRhZ3JhbQo+Pj4+IHdpbGwgYmUgbWFya2VkIHdpdGggTVNHX0VPUiwganVzdCBhcyBU
Q1AvU0NUUCBkb2VzLgpNYWtlcyBzZW5zZSB0byBtZS4KPj4+IEkgYWdyZWUgdGhhdCB0aGUgY3Vy
cmVudCBiZWhhdmlvciBpcyBzdWJvcHRpbWFsLCBidXQ6Cj4+Pgo+Pj4gICAqIElzbid0IHRoaXMg
dGhlIHNhbWUgYmVoYXZpb3IgdGhhdCBvdGhlciBkYXRhZ3JhbSBzb2NrZXQgdHlwZXMKPj4+ICAg
ICBleGhpYml0PyBJdCBzZWVtcyBsaWtlIHRoaXMgd291bGQgbWFrZSBUSVBDIGJlaGF2ZSBpbmNv
bnNpc3RlbnRseQo+Pj4gICAgIGNvbXBhcmVkIHRvIG90aGVyIHRyYW5zcG9ydHMKPj4gWWVzLCBT
Q1RQLgo+PiBEbyB5b3Ugc2VlIGFueSByZWxpYWJsZSBkYXRhZ3JhbSB0cmFuc3BvcnRzIG5vdCBk
b2luZyB0aGlzPwo+Pgo+Pj4gICAqIElzbid0IHRoaXMgYSBjb21wYXRpYmlsaXR5IGJyZWFrIHdp
dGggZXhpc3Rpbmcgc29mdHdhcmU/IFBhcnRpY3VsYXJseQo+Pj4gICAgIGV4aXN0aW5nIHNvZnR3
YXJlIHdpbGwgbm90IGV4cGVjdCB0byByZWNlaXZlIHRyYWlsZXJzIG9mIG92ZXJsb25nCj4+PiAg
ICAgZGF0YWdyYW1zCj4+IEkgdGFsa2VkIHRvIEpvbiBhYm91dCB0aGlzLCBoZSBzZWVtcyBva2F5
IHdpdGggdGhpcy4KPj4KPj4+IEl0IGZlZWxzIGxpa2UgdGhpcyBiZWhhdmlvciBzaG91bGQgYmUg
YWN0aXZhdGVkIGVpdGhlciB3aXRoIGEKPj4+IHNldHNvY2tvcHQoMikgY2FsbCBvciBhIG5ldyBN
U0dfKiBmbGFnIHBhc3NlZCB0byByZWN2Cj4+IEFueXdheSwgSXQgbWF5IG5vdCBiZSB3b3J0aCBh
IG5ldyBzb2Nrb3B0Lgo+PiBJJ20gdGhpbmtpbmcgdG8gcGFzcyBNU0dfRU9SIGludG8gc2VuZG1z
ZzoKPj4gICAgc2VuZG1zZyhNU0dfRU9SKS4KPiBzb3JyeSwgSSBtZWFudCByZWN2bXNnKCk7CgpT
dGlsbCBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgd2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgaGVyZS4g
RG8geW91IG1lYW4gCnRoYXQgaWYgd2UgYWRkIE1TR19FT1IgYXMgYSBmbGFnwqAgdG8gcmVjdm1z
ZygpIHRoYXQgbWVhbnMgd2UgKmRvbid0KiAKd2FudCB0aGUgcmVtYWluZGVyIG9mIHRoZSBtZXNz
YWdlLCBpLmUuLCBpdCBpcyBvayB0byB0cnVuY2F0ZSBpdD8KCk9yIGRvIHlvdSBtZWFuIHRoZSBv
cHBvc2l0ZT8KCkluIHRoZSBmaXJzdCBjYXNlLCB3ZSBkb24ndCBzb2x2ZSBhbnkgY29tcGF0aWJp
bGl0eSBpc3N1ZSwgaWYgdGhhdCBpcyAKdGhlIHB1cnBvc2UuIFRoZSBwcm9ncmFtbWVyIHN0aWxs
IGhhcyB0byBhZGQgY29kZSB0byBnZXQgdGhlIGN1cnJlbnQgCmJlaGF2aW9yLgoKSW4gdGhlIGxh
dHRlciBjYXNlIHdlIHdvdWxkIGJlIG9uIHRoZSAxMDAlIHNhZmUgc2lkZSwgYWx0aG91Z2ggSSBo
YXZlIGEgCnJlYWwgaGFyZCB0aW1lIHRvIHNlZSB0aGF0IHRoaXMgY291bGQgYmUgYSByZWFsIGlz
c3VlLiBXaHkgd291bGQgYW55Ym9keSAKZGVsaWJlcmF0ZWx5IGRlc2lnbiBhbiBhcHBsaWNhdGlv
biBmb3IgaGF2aW5nIG1lc3NhZ2VzIHRydW5jYXRlZC4KCi8vL2pvbgoKCj4+IHRvIGluZGljYXRl
IHdlIGRvbid0IHdhbnQgdGhlIHRydW5jYXRpbmcgbXNnLgo+Pgo+PiBXaGVuIHRoZSBtc2cgZmxh
ZyByZXR1cm5zIHdpdGggbm8gTVNHX0VPUiwgaXQgbWVhbnMgdGhlcmUncyBtb3JlIGRhdGEgdG8g
cmVhZC4KPj4KPj4gVGhhbmtzLgo+Pj4gLSBFcmluCj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFhp
biBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiAgIG5ldC90aXBjL3Nv
Y2tldC5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9uZXQvdGlwYy9zb2NrZXQuYyBiL25ldC90aXBjL3NvY2tldC5jCj4+Pj4gaW5kZXgg
MzRhOTdlYTM2Y2M4Li41MDRlNTk4MzhiOGIgMTAwNjQ0Cj4+Pj4gLS0tIGEvbmV0L3RpcGMvc29j
a2V0LmMKPj4+PiArKysgYi9uZXQvdGlwYy9zb2NrZXQuYwo+Pj4+IEBAIC0xODgwLDYgKzE4ODAs
NyBAQCBzdGF0aWMgaW50IHRpcGNfcmVjdm1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2NrLCBzdHJ1Y3Qg
bXNnaGRyICptLAo+Pj4+ICAgICAgICBib29sIGNvbm5lY3RlZCA9ICF0aXBjX3NrX3R5cGVfY29u
bmVjdGlvbmxlc3Moc2spOwo+Pj4+ICAgICAgICBzdHJ1Y3QgdGlwY19zb2NrICp0c2sgPSB0aXBj
X3NrKHNrKTsKPj4+PiAgICAgICAgaW50IHJjLCBlcnIsIGhsZW4sIGRsZW4sIGNvcHk7Cj4+Pj4g
KyAgICAgc3RydWN0IHRpcGNfc2tiX2NiICpza2JfY2I7Cj4+Pj4gICAgICAgIHN0cnVjdCBza19i
dWZmX2hlYWQgeG1pdHE7Cj4+Pj4gICAgICAgIHN0cnVjdCB0aXBjX21zZyAqaGRyOwo+Pj4+ICAg
ICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwo+Pj4+IEBAIC0xOTAzLDYgKzE5MDQsNyBAQCBzdGF0
aWMgaW50IHRpcGNfcmVjdm1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2NrLCBzdHJ1Y3QgbXNnaGRyICpt
LAo+Pj4+ICAgICAgICAgICAgICAgIGlmICh1bmxpa2VseShyYykpCj4+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGV4aXQ7Cj4+Pj4gICAgICAgICAgICAgICAgc2tiID0gc2tiX3BlZWso
JnNrLT5za19yZWNlaXZlX3F1ZXVlKTsKPj4+PiArICAgICAgICAgICAgIHNrYl9jYiA9IFRJUENf
U0tCX0NCKHNrYik7Cj4+Pj4gICAgICAgICAgICAgICAgaGRyID0gYnVmX21zZyhza2IpOwo+Pj4+
ICAgICAgICAgICAgICAgIGRsZW4gPSBtc2dfZGF0YV9zeihoZHIpOwo+Pj4+ICAgICAgICAgICAg
ICAgIGhsZW4gPSBtc2dfaGRyX3N6KGhkcik7Cj4+Pj4gQEAgLTE5MjIsMTggKzE5MjQsMjcgQEAg
c3RhdGljIGludCB0aXBjX3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hk
ciAqbSwKPj4+Pgo+Pj4+ICAgICAgICAvKiBDYXB0dXJlIGRhdGEgaWYgbm9uLWVycm9yIG1zZywg
b3RoZXJ3aXNlIGp1c3Qgc2V0IHJldHVybiB2YWx1ZSAqLwo+Pj4+ICAgICAgICBpZiAobGlrZWx5
KCFlcnIpKSB7Cj4+Pj4gLSAgICAgICAgICAgICBjb3B5ID0gbWluX3QoaW50LCBkbGVuLCBidWZs
ZW4pOwo+Pj4+IC0gICAgICAgICAgICAgaWYgKHVubGlrZWx5KGNvcHkgIT0gZGxlbikpCj4+Pj4g
LSAgICAgICAgICAgICAgICAgICAgIG0tPm1zZ19mbGFncyB8PSBNU0dfVFJVTkM7Cj4+Pj4gLSAg
ICAgICAgICAgICByYyA9IHNrYl9jb3B5X2RhdGFncmFtX21zZyhza2IsIGhsZW4sIG0sIGNvcHkp
Owo+Pj4+ICsgICAgICAgICAgICAgaW50IG9mZnNldCA9IHNrYl9jYi0+Ynl0ZXNfcmVhZDsKPj4+
PiArCj4+Pj4gKyAgICAgICAgICAgICBjb3B5ID0gbWluX3QoaW50LCBkbGVuIC0gb2Zmc2V0LCBi
dWZsZW4pOwo+Pj4+ICsgICAgICAgICAgICAgcmMgPSBza2JfY29weV9kYXRhZ3JhbV9tc2coc2ti
LCBobGVuICsgb2Zmc2V0LCBtLCBjb3B5KTsKPj4+PiArICAgICAgICAgICAgIGlmICh1bmxpa2Vs
eShyYykpCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXhpdDsKPj4+PiArICAgICAg
ICAgICAgIGlmICh1bmxpa2VseShvZmZzZXQgKyBjb3B5IDwgZGxlbikpIHsKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgaWYgKCEoZmxhZ3MgJiBNU0dfUEVFSykpCj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc2tiX2NiLT5ieXRlc19yZWFkID0gb2Zmc2V0ICsgY29weTsKPj4+
PiArICAgICAgICAgICAgIH0gZWxzZSB7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIG0tPm1z
Z19mbGFncyB8PSBNU0dfRU9SOwo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBza2JfY2ItPmJ5
dGVzX3JlYWQgPSAwOwo+Pj4+ICsgICAgICAgICAgICAgfQo+Pj4+ICAgICAgICB9IGVsc2Ugewo+
Pj4+ICAgICAgICAgICAgICAgIGNvcHkgPSAwOwo+Pj4+ICAgICAgICAgICAgICAgIHJjID0gMDsK
Pj4+PiAtICAgICAgICAgICAgIGlmIChlcnIgIT0gVElQQ19DT05OX1NIVVRET1dOICYmIGNvbm5l
Y3RlZCAmJiAhbS0+bXNnX2NvbnRyb2wpCj4+Pj4gKyAgICAgICAgICAgICBpZiAoZXJyICE9IFRJ
UENfQ09OTl9TSFVURE9XTiAmJiBjb25uZWN0ZWQgJiYgIW0tPm1zZ19jb250cm9sKSB7Cj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICByYyA9IC1FQ09OTlJFU0VUOwo+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGV4aXQ7Cj4+Pj4gKyAgICAgICAgICAgICB9Cj4+Pj4gICAgICAgIH0K
Pj4+PiAtICAgICBpZiAodW5saWtlbHkocmMpKQo+Pj4+IC0gICAgICAgICAgICAgZ290byBleGl0
Owo+Pj4+Cj4+Pj4gICAgICAgIC8qIE1hcmsgbWVzc2FnZSBhcyBncm91cCBldmVudCBpZiBhcHBs
aWNhYmxlICovCj4+Pj4gICAgICAgIGlmICh1bmxpa2VseShncnBfZXZ0KSkgewo+Pj4+IEBAIC0x
OTU2LDkgKzE5NjcsMTAgQEAgc3RhdGljIGludCB0aXBjX3JlY3Ztc2coc3RydWN0IHNvY2tldCAq
c29jaywgc3RydWN0IG1zZ2hkciAqbSwKPj4+PiAgICAgICAgICAgICAgICB0aXBjX25vZGVfZGlz
dHJfeG1pdChzb2NrX25ldChzayksICZ4bWl0cSk7Cj4+Pj4gICAgICAgIH0KPj4+Pgo+Pj4+IC0g
ICAgIHRza19hZHZhbmNlX3J4X3F1ZXVlKHNrKTsKPj4+PiArICAgICBpZiAoIXNrYl9jYi0+Ynl0
ZXNfcmVhZCkKPj4+PiArICAgICAgICAgICAgIHRza19hZHZhbmNlX3J4X3F1ZXVlKHNrKTsKPj4+
Pgo+Pj4+IC0gICAgIGlmIChsaWtlbHkoIWNvbm5lY3RlZCkpCj4+Pj4gKyAgICAgaWYgKGxpa2Vs
eSghY29ubmVjdGVkKSB8fCBza2JfY2ItPmJ5dGVzX3JlYWQpCj4+Pj4gICAgICAgICAgICAgICAg
Z290byBleGl0Owo+Pj4+Cj4+Pj4gICAgICAgIC8qIFNlbmQgY29ubmVjdGlvbiBmbG93IGNvbnRy
b2wgYWR2ZXJ0aXNlbWVudCB3aGVuIGFwcGxpY2FibGUgKi8KPj4+PiAtLQo+Pj4+IDIuMjcuMAo+
Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+Pj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+Pj4+IHRpcGMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPj4+PiBodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdAo+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRp
c2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNj
dXNzaW9uCg==
