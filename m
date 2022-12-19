Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE76512E2
	for <lists+tipc-discussion@lfdr.de>; Mon, 19 Dec 2022 20:24:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1p7LkH-0001qi-GP;
	Mon, 19 Dec 2022 19:24:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1p7LkA-0001qW-Q6
 for tipc-discussion@lists.sourceforge.net;
 Mon, 19 Dec 2022 19:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5wK8VNMWKEiiTBni9vpH0YYrE2+uChH3V2irUt14WS0=; b=jy3+K9XemOx1VEXh2GidzRDtQf
 YTuyRmUQZIE2viI2VS+sys31AHkVbrU+GviRV1HBMgcuF2aw1aqS3Zj1/DELDw9hlnyAn6bHA/Rl3
 ry5cCxMjJV4XGtfGHPAMGO/TsBro0z6UBvOauo0taI7Q04MyaDr3odDA/HljUy0BUcFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5wK8VNMWKEiiTBni9vpH0YYrE2+uChH3V2irUt14WS0=; b=dZj48OHB+yu6Ij4k+QGEiQvCRg
 oz1Am4/5HVpFccr/VWWqq7Un48VXBwai+Y4y5EFljm7ah1xApaGuwMePCb7AH5XhRadGQyMmZSCnN
 ud9lZTu8r2Ojtx4nPkFG2su4ru+XG1c8h5Su/l4AaRGLz6r9jBNWeBCS7ewA/gTJaF2k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p7Lk7-0051q8-EY for tipc-discussion@lists.sourceforge.net;
 Mon, 19 Dec 2022 19:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671477841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5wK8VNMWKEiiTBni9vpH0YYrE2+uChH3V2irUt14WS0=;
 b=Z2ziXVx6C9Q7xy67dTeWkZIs0g4AB2KMZsUIsV8BguYXs7tt1U9tDXiX9tMBlOnUjJvmbh
 budPeAYaP4KmTz2EX7YzKuAroCHVL+zY/s/3wcxaLNsq0Hx57POj1EOOD+wFfOCIKRDOyQ
 scARVbkqqdHTeZoPB7VGySWZXrC49/I=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-582-5B6pHjKEM325_AqclYDOow-1; Mon, 19 Dec 2022 14:23:59 -0500
X-MC-Unique: 5B6pHjKEM325_AqclYDOow-1
Received: by mail-qv1-f71.google.com with SMTP id
 od14-20020a0562142f0e00b0051a47174c4eso910876qvb.10
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 19 Dec 2022 11:23:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5wK8VNMWKEiiTBni9vpH0YYrE2+uChH3V2irUt14WS0=;
 b=BJaEN7H0cTrhpD/x/Ihnw0xJ2p7JcgWBLEo5tBrmK7e36bGqNwPPj1uTGgJljP22pm
 Gi6GiTPNpWBYllWwmmgKZ0X6bCG52kKeAJC1ouZ1CNRBvItxuUoWUOWBpmi7IAxCOh7O
 aKAQeMcC2BPujKcwOmu16AwHBFD9lGW+ngbFiydXR4QivbvUaFq4f0NVQjiS0kF6XIoH
 lJyC22HZsEU31hfgkmuaobVRK5gVGNcEywSGJIYFdz+ZrDr7JYbS0dV1TUcOisJ8oRzP
 g+fD51TXRKzGZdxZaM/10MN1BYUmPhAG2qML/rEvB1qX6HXlTfl9ubVWpgZi3atp9/MJ
 wqnA==
X-Gm-Message-State: ANoB5pmSS702JrGvE2uA6T7AfppMlLAIl9kEqtw1yW2SFomiod/djwe5
 iQqxXYvK0Sm8lumS9jl6XD80txRBvzBpdv6YKnECFkMvfLC2BkBl/t52ODs+oXweXC0YTVstSPN
 tQWZRH2ylVachZo1WYkKzSKya/WIj/e4E56vdhFacHh6tshWzUMPoPlT8oyM0xylAghbPiW97dR
 lq3Ojl916fSw==
X-Received: by 2002:ac8:1118:0:b0:3a5:fef7:dfe5 with SMTP id
 c24-20020ac81118000000b003a5fef7dfe5mr50138681qtj.12.1671477838495; 
 Mon, 19 Dec 2022 11:23:58 -0800 (PST)
X-Google-Smtp-Source: AA0mqf64vv6H9OjxDvC2HuwQEIeMydurlZWNE6FiIkwMzpO7IOGSMWz0KB9YBRGLG87XBdryo0bU5g==
X-Received: by 2002:ac8:1118:0:b0:3a5:fef7:dfe5 with SMTP id
 c24-20020ac81118000000b003a5fef7dfe5mr50138651qtj.12.1671477838096; 
 Mon, 19 Dec 2022 11:23:58 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 n19-20020a05622a11d300b003a7eb5baf3csm6559050qtk.69.2022.12.19.11.23.56
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Dec 2022 11:23:57 -0800 (PST)
Message-ID: <91c11e4d-0dc4-82f7-953a-f6309f258860@redhat.com>
Date: Mon, 19 Dec 2022 14:23:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: tipc-discussion@lists.sourceforge.net
References: <CA+z2G=PX8WpOUYSNfoiKX1MFz30do7vCOBsqO=gz=b3-=_BA0g@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <CA+z2G=PX8WpOUYSNfoiKX1MFz30do7vCOBsqO=gz=b3-=_BA0g@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/13/22 02:30, Harish Chandrasekaran wrote: > Hello all, 
 > > I'm looking for a utility/command to get the tipc packet/connection >
 information while running the client and server within the same > [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p7Lk7-0051q8-EY
Subject: Re: [tipc-discussion] TIPC Packet statistics
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

CgpPbiAxMi8xMy8yMiAwMjozMCwgSGFyaXNoIENoYW5kcmFzZWthcmFuIHdyb3RlOgo+IEhlbGxv
IGFsbCwKPgo+IEknbSBsb29raW5nIGZvciBhIHV0aWxpdHkvY29tbWFuZCB0byBnZXQgdGhlIHRp
cGMgcGFja2V0L2Nvbm5lY3Rpb24KPiBpbmZvcm1hdGlvbiB3aGlsZSBydW5uaW5nIHRoZSBjbGll
bnQgYW5kIHNlcnZlciB3aXRoaW4gdGhlIHNhbWUKPiBjYXJkL2tlcm5lbC4KPgo+IFRoZSAidGlw
YyBsaW5rIHN0YXRpc3RpY3Mgc2hvdyIgZ2l2ZXMgc29tZSBpbnNpZ2h0cyByZWdhcmRpbmcgdGhl
IHBhY2tldHMKPiBhY3Jvc3MgdGhlIGJlYXJlcnMKPiBMaW5rIDwxMDMwMDQxMTpCRUFSRVIxLTEw
MzAwNDMxOkJFQVJFUi0yPgo+ICAgIEFDVElWRSAgTVRVOjE0MDAwICBQcmlvcml0eToxMCAgVG9s
ZXJhbmNlOjE1MDAgbXMgIFdpbmRvdzo1MCBwYWNrZXRzCj4gICAgUlggcGFja2V0czo5MDEzMTg4
IGZyYWdtZW50czowLzAgYnVuZGxlczowLzAKPiAgICBUWCBwYWNrZXRzOjk0MzA5NzcgZnJhZ21l
bnRzOjc2MC8xOTAgYnVuZGxlczowLzAKPiAgICBUWCBwcm9maWxlIHNhbXBsZTo2MTM3MzYgcGFj
a2V0cyBhdmVyYWdlOjQyIG9jdGV0cwo+ICAgIDAtNjQ6OTMlIC0yNTY6NyUgLTEwMjQ6MCUgLTQw
OTY6MCUgLTE2Mzg0OjAlIC0zMjc2ODowJSAtNjYwMDA6MCUKPiAgICBSWCBzdGF0ZXM6MjE1NTQ5
MCBwcm9iZXM6NDIzMTEwIG5ha3M6ODM2NSBkZWZzOjExODA2IGR1cHM6MTE4NzUKPiAgICBUWCBz
dGF0ZXM6MjE5OTYxNyBwcm9iZXM6NDEzMTkxIG5ha3M6MTE4NjYgYWNrczoyOTAgcmV0cmFuczo4
MzcxCj4gICAgQ29uZ2VzdGlvbiBsaW5rOjAgIFNlbmQgcXVldWUgbWF4OjAgYXZnOjAKPgo+Cj4g
SSdtIGxvb2tpbmcgZm9yIHNvbWV0aGluZyBzaW1pbGFyIHRvIHRoZSBhYm92ZSBvciBzb21ldGhp
bmcgc2ltaWxhciB0byB3aGF0Cj4gbmV0c3RhdCBwcm92aWRlcyBmb3IgdGNwIHBhY2tldHMvY29u
bmVjdGlvbnMgd2l0aCBpbiB0aGUgc2FtZSBjYXJkL21hY2hpbmUKPgo+IG5ldHN0YXQgLXMKPiBU
Y3A6Cj4gICAgICAxMzEyNzI3IGFjdGl2ZSBjb25uZWN0aW9uIG9wZW5pbmdzCj4gICAgICAzMjUy
MTcgcGFzc2l2ZSBjb25uZWN0aW9uIG9wZW5pbmdzCj4gICAgICA5ODczMDAgZmFpbGVkIGNvbm5l
Y3Rpb24gYXR0ZW1wdHMKPiAgICAgIDkgY29ubmVjdGlvbiByZXNldHMgcmVjZWl2ZWQKPiAgICAg
IDQxIGNvbm5lY3Rpb25zIGVzdGFibGlzaGVkCj4gICAgICA4NDkzOTI5NiBzZWdtZW50cyByZWNl
aXZlZAo+ICAgICAgODY5NzY4MjIgc2VnbWVudHMgc2VudCBvdXQKPiAgICAgIDk4NTc5MCBzZWdt
ZW50cyByZXRyYW5zbWl0dGVkCj4gICAgICAwIGJhZCBzZWdtZW50cyByZWNlaXZlZAo+ICAgICAg
MTgyMSByZXNldHMgc2VudAo+Cj4gRWc6IFRoZSAgaGVsbG9fc2VydmVyIGFuZCBoZWxsb19jbGll
bnQgcnVuIG9uIHRoZSBzYW1lIG1hY2hpbmUuIEkgd291bGQKPiBsaWtlIHRvIGNoZWNrIGlmIHRo
ZXJlIGFyZSBhbnkgbmFrcyBvciBkdXBsaWNhdGVzIG9yIHBhY2tldCBkcm9wcyBvciBpZgo+IHRo
ZXJlIGFyZSBhbnkgY29ubmVjdGlvbiByZXNldHMgb3IgZmFpbGVkIGNvbm5lY3Rpb24gYXR0ZW1w
dHMuCj4KPiBJIHRyaWVkIHRvIGNoZWNrIGlmICpuZXRzdGF0IHN0YXRpc3RpY3MgKmNhcHR1cmVz
IFRJUEMgY29ubmVjdGlvbiByZWxhdGVkCj4gaW5mb3JtYXRpb24gYnV0IGl0IGRvZXNuJ3Qgc2Vl
bSB0byBjYXB0dXJlIHRoZSBUSVBDIHJlbGF0ZWQgaW5mby4KPgo+IEtpbmRseSBsZXQgbWUga25v
dyBpZiB0aGVyZSBhcmUgYW55IHV0aWxpdGllcyBvciBUSVBDIGNvbW1hbmRzIHdoaWNoIEkgY2Fu
Cj4gdXNlIHRvIGdhdGhlciBzdWNoIGluZm9ybWF0aW9uPwo+Cj4gV291bGQgZ3JlYXRseSBhcHBy
ZWNpYXRlIGFueSBoZWxwLgo+Cj4gU2luY2VyZWx5LAo+IEhhcmlzaAoKSGksClNvcnJ5IGZvciBh
IGxhdGUgYW5zd2VyLgpJdCBpcyBhY3R1YWxseSBwb3NzaWJsZSB0byBvYnNlcnZlIG5vZGUgaW50
ZXJuYWwgdHJhZmZpYyB3aXRoIAp0Y3BkdW1wL3dpcmVzaGFyawppZsKgIHlvdSBhY3RpdmF0ZSBu
ZXR3b3JrIHRhcHMgZm9yIHRoZSBsb29wYmFjayBkZXZpY2UuClRoZSBmb2xsb3dpbmcgY29tbWl0
IGV4cGxhaW5zIGl0OgoKY29tbWl0IDZjOTA4MWEzOTE1ZGMwNzgyYThmMTQyNDM0M2I3OTRmMmNm
NTNkOWMKQXV0aG9yOiBKb2huIFJ1dGhlcmZvcmQgPGpvaG4ucnV0aGVyZm9yZEBkZWt0ZWNoLmNv
bS5hdT4KRGF0ZTrCoMKgIFdlZCBBdWcgNyAxMjo1MjoyOSAyMDE5ICsxMDAwCgogwqDCoMKgIHRp
cGM6IGFkZCBsb29wYmFjayBkZXZpY2UgdHJhY2tpbmcKCiDCoMKgwqAgU2luY2Ugbm9kZSBpbnRl
cm5hbCBtZXNzYWdlcyBhcmUgcGFzc2VkIGRpcmVjdGx5IHRvIHRoZSBzb2NrZXQsIGl0IAppcyBu
b3QKIMKgwqDCoCBwb3NzaWJsZSB0byBvYnNlcnZlIHRob3NlIG1lc3NhZ2VzIHZpYSB0Y3BkdW1w
IG9yIHdpcmVzaGFyay4KCiDCoMKgwqAgV2Ugbm93IHJlbWVkeSB0aGlzIGJ5IG1ha2luZyBpdCBw
b3NzaWJsZSB0byBjbG9uZSBzdWNoIG1lc3NhZ2VzIGFuZCAKc2VuZAogwqDCoMKgIHRoZSBjbG9u
ZXMgdG8gdGhlIGxvb3BiYWNrIGludGVyZmFjZS7CoCBUaGUgY2xvbmVzIGFyZSBkcm9wcGVkIGF0
IApyZWNlcHRpb24KIMKgwqDCoCBhbmQgaGF2ZSBubyBmdW5jdGlvbmFsIHJvbGUgZXhjZXB0IG1h
a2luZyB0aGUgdHJhZmZpYyB2aXNpYmxlLgoKIMKgwqDCoCBUaGUgZmVhdHVyZSBpcyBlbmFibGVk
IGlmIG5ldHdvcmsgdGFwcyBhcmUgYWN0aXZlIGZvciB0aGUgbG9vcGJhY2sgCmRldmljZS4KIMKg
wqDCoCBwY2FwIGZpbHRlcmluZyByZXN0cmljdGlvbnMgcmVxdWlyZSB0aGUgbWVzc2FnZXMgdG8g
YmUgcHJlc2VudGVkIHRvIHRoZQogwqDCoMKgIHJlY2VpdmluZyBzaWRlIG9mIHRoZSBsb29wYmFj
ayBkZXZpY2UuCgogwqDCoMKgIHYzIC0gRnVuY3Rpb24gZGV2X25pdF9hY3RpdmUgdXNlZCB0byBj
aGVjayBmb3IgbmV0d29yayB0YXBzLgogwqDCoMKgwqDCoMKgIC0gUHJvY2VkdXJlIG5ldGlmX3J4
X25pIHVzZWQgdG8gc2VuZCBjbG9uZWQgbWVzc2FnZXMgdG8gbG9vcGJhY2sgCmRldmljZS4KCiDC
oMKgwqAgU2lnbmVkLW9mZi1ieTogSm9obiBSdXRoZXJmb3JkIDxqb2huLnJ1dGhlcmZvcmRAZGVr
dGVjaC5jb20uYXU+CiDCoMKgwqAgQWNrZWQtYnk6IEpvbiBNYWxveSA8am9uLm1hbG95QGVyaWNz
c29uLmNvbT4KIMKgwqDCoCBBY2tlZC1ieTogWWluZyBYdWUgPHlpbmcueHVlQHdpbmRyaXZlci5j
b20+CiDCoMKgwqAgU2lnbmVkLW9mZi1ieTogRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxv
ZnQubmV0PgoKClRoYW5rcwovLy9qb24KCgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4gdGlw
Yy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo+CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
