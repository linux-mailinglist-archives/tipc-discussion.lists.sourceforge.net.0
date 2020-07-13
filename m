Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF88B21D83C
	for <lists+tipc-discussion@lfdr.de>; Mon, 13 Jul 2020 16:20:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1juzJY-000195-B6; Mon, 13 Jul 2020 14:20:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1juzJW-00018v-ON
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jul 2020 14:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wOceMGXSOiLK+qXY+PNH8clgk8nLqFZT3iJ+tdiFW50=; b=NUtGLlnbbnGwVcFuwfKxvxhvVP
 HCgHmPyQovT/LfYLzFsLhS9YyUmTIhDA2M+8aO9AkQkmw0xRjBdfCFodzv6axIt2L9DBmhYI9Ua1V
 tlr97T/SFu/ZYZUqIC/94MjWipzAUTV0lTqnlREerJli4aS/AAhvUXFKYPdxz275tP98=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wOceMGXSOiLK+qXY+PNH8clgk8nLqFZT3iJ+tdiFW50=; b=LLQ0ojOdybCNDC3jmlReHK8Det
 ClDyTNRjpDkcIA7rU6sKL0fJj/kaEiguQJab3W9hQcWOL4/GcVwKc7iS7TZdg65WMn098HXe9gdKU
 84ddF5VN7u7ZKFgGlg5f+GkuK1Co2ub4clcy41C2+y0Y5mwCxJS7SCdvM+TClGR+LAes=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1juzJQ-005VHq-NU
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jul 2020 14:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594649995;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wOceMGXSOiLK+qXY+PNH8clgk8nLqFZT3iJ+tdiFW50=;
 b=Tpa36mGHY2ZDUhU4JSgodMSffKN4ERB+M3uLZxQWHj4IN/Nb0SYTz107FReeS2HB/jCjus
 Bcu9SngHvmE2b/HqaOnLCd10BTwzHYy+B7m70Efq7JA1dWfo/CvEkJIkQPXAbOEgsp5z56
 oxXbLCNTBTmJp5MgVq4qtzlogDal8mI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-Uf88wvPPPyOv2_yHSYonNg-1; Mon, 13 Jul 2020 10:19:51 -0400
X-MC-Unique: Uf88wvPPPyOv2_yHSYonNg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67DE7102C804;
 Mon, 13 Jul 2020 14:19:50 +0000 (UTC)
Received: from [10.10.120.78] (ovpn-120-78.rdu2.redhat.com [10.10.120.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B10FB7621E;
 Mon, 13 Jul 2020 14:19:48 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
 <ca3ee945-261f-cc3b-eea4-96a74a11311e@redhat.com>
 <AM6PR0502MB3925602698CB65B3B0836ECCE2600@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <0a931393-2b1b-667b-324b-c7ad5b7d71bf@redhat.com>
Date: Mon, 13 Jul 2020 10:19:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB3925602698CB65B3B0836ECCE2600@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1juzJQ-005VHq-NU
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] tipc: add more features to
 TIPC encryption
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA3LzEzLzIwIDY6MjMgQU0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToKPiBIaSBKb24sCj4K
PiBQbGVhc2Ugc2VlIG15IGZlZWRiYWNrIGlubGluZS4KPgo+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+PiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPgo+PiBTZW50OiBT
YXR1cmRheSwgSnVseSAxMSwgMjAyMCAxOjM4IEFNCj4+IFRvOiBUdW9uZyBUb25nIExpZW4gPHR1
b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT47IG1hbG95QGRvbmpvbm4uY29tOyB5aW5nLnh1ZUB3
aW5kcml2ZXIuY29tOyB0aXBjLQo+PiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+
PiBDYzogdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1Pgo+PiBTdWJqZWN0OiBSZTog
W1BBVENIIFJGQyAwLzVdIHRpcGM6IGFkZCBtb3JlIGZlYXR1cmVzIHRvIFRJUEMgZW5jcnlwdGlv
bgo+Pgo+Pgo+Pgo+PiBPbiA3LzEwLzIwIDY6MTEgQU0sIFR1b25nIExpZW4gd3JvdGU6Cj4+PiBI
aSBKb24vYWxsLAo+Pj4KPj4+IEFzIG1lbnRpb25lZCwgSSdkIGxpa2UgdG8gc2hhcmUgdGhlIHNl
cmllcyB0aGF0IEkgaGF2ZSBhZGRlZCBzb21lIG5ldwo+Pj4gZmVhdHVyZXMgaW4gb3JkZXIgdG8g
Y29tcGxldGUgdGhlIFRJUEMgZW5jcnlwdGlvbjoKPj4+Cj4+PiAtIFBhdGNoIDEgKCJ0aXBjOiBm
aXggdXNpbmcgc21wX3Byb2Nlc3Nvcl9pZCgpIGluIHByZWVtcHRpYmxlIik6Cj4+PiAtIFBhdGNo
IDIgKCJ0aXBjOiBvcHRpbWl6ZSBrZXkgc3dpdGNoaW5nIHRpbWUgYW5kIGxvZ2ljIik6Cj4+PiBU
aGVzZSB0d28gcGF0Y2hlcyBqdXN0IGRvIGEgYnVnLWZpeCBhbmQgb3B0aW1pemF0aW9uIGZvciB0
aGUgY29kZSBhcwo+Pj4gYSBwcmVwYXJhdGlvbiBmb3IgbGF0ZXIgY29tbWl0cy4KPj4+Cj4+PiAt
IFBhdGNoIDMgKCJ0aXBjOiBpbnRyb2R1Y2UgZW5jcnlwdGlvbiBtYXN0ZXIga2V5Iik6Cj4+PiBU
aGlzIHdpbGwgaW50cm9kdWNlIGEgJ21hc3RlciBrZXknIHN1cHBvcnQgd2hpY2ggaXMgc2V0IGJ5
IHVzZXIgYXMgYQo+Pj4gJ2xvbmctdGVybScgb3Igc3RhdGljIGtleSAoZS5nLiBzaGFyZWQgYmV0
d2VlbiBub2RlcyBpbiB0aGUgY2x1c3RlciBpbgo+Pj4gdXNlciBjb250cm9sIHdheSkuIEl0IHdp
bGwgYWN0IGxpa2UgYSBrZXkgZW5jcnlwdGlvbiBrZXkgZm9yIHRoZSBsYXRlcgo+Pj4ga2V5IGV4
Y2hhbmdlLCBhcyB3ZWxsIGFzIGFsbG93IGEgbmV3IG5vZGUgam9pbnMgdGhlIGNsdXN0ZXIgd2hp
bGUgaXQKPj4+IGhhcyBubyBrbm93bGVkZ2Ugb2YgY3VycmVudCBhY3RpdmUgc2Vzc2lvbiBrZXlz
IGluIHRoZSBleGlzdGluZyBub2Rlcy4KPj4+Cj4+PiBUaGUgbWFzdGVyIGtleSBzZXR0aW5nIHdp
bGwgdXNlIHRoZSBzYW1lICd0aXBjIG5vZGUgc2V0IGtleScgY29tbWFuZAo+Pj4gYnV0IHdpdGgg
YSAnbWFzdGVyJyBmbGFnIChzZWUgYmVsb3cpLgo+Pj4KPj4+IC0gUGF0Y2ggNCAoInRpcGM6IGFk
ZCBhdXRvbWF0aWMgc2Vzc2lvbiBrZXkgZXhjaGFuZ2UiKToKPj4+IFRYIGtleSBvZiBhIG5vZGUg
d2lsbCBub3cgYmUgYWJsZSB0byBiZSBleGNoYW5nZWQgdG8gcGVlciBub2RlcyAoCj4+PiBlbmNy
eXB0ZWQvZGVjcnlwdGVkIGJ5IHRoZSBtYXN0ZXIga2V5KSBhbmQgYXR0YWNoZWQgYXMgdGhlCj4+
PiBjb3JyZXNwb25kaW5nIFJYIGtleXMgYXV0b21hdGljYWxseS4gQSBub2RlIGNhbiBhbHNvICdy
ZXF1ZXN0JyBmb3IgYSBUWAo+Pj4ga2V5IGZyb20gcGVlciB3aGVuZXZlciBuZWVkZWQuCj4+Pgo+
Pj4gVGhpcyB3aWxsIGVuYWJsZSB1cyB0byBkbyB0aGUgbGF0ZXIgcmVrZXlpbmcsIGFuZCBhbHNv
IG1ha2UgYSBuZXcgbm9kZQo+Pj4gYmVpbmcgYWJsZSB0byBvYnRhaW4gdGhlIHNlc3Npb24ga2V5
cyBmcm9tIGV4aXN0aW5nIG5vZGVzLgo+Pj4KPj4+IC0gUGF0Y2ggNSAoInRpcGM6IGFkZCBhdXRv
bWF0aWMgcmVrZXlpbmcgZm9yIGVuY3J5cHRpb24ga2V5Iik6Cj4+PiBGaW5hbGx5LCB0aGlzIHBh
dGNoIHdpbGwgYWRkIHRoZSBhdXRvbWF0aWMgcmVrZXlpbmcgd2hpY2ggd2lsbCBnZW5lcmF0ZQo+
Pj4gYSBzZXNzaW9uIGtleSBvbiBlYWNoIG5vZGUgYXQgYSBzcGVjaWZpYyBpbnRlcnZhbC4gVGhl
IGtleSB3aWxsIGJlCj4+PiBhbHNvIGRpc3RyaWJ1dGVkIGF1dG9tYXRpY2FsbHkgdG8gcGVlciBu
b2Rlcywgc28gaXQgd2lsbCBiZSBzd2l0Y2hlZCB0bwo+Pj4gYmUgYWN0aXZlIHNob3J0bHkgYW5k
IHRyYWZmaWMgd2lsbCBiZSBmaW5hbGx5IGVuY3J5cHRlZC9kZWNyeXB0ZWQgYnkKPj4+IHRoYXQg
bmV3IGtleS4KPj4+Cj4+PiBUaGUgcmVrZXlpbmcgaW50ZXJ2YWwgaXMgY29uZmlndXJhYmxlIGFz
IHdlbGwsIGFsc28gdXNlciBjYW4gZGlzYWJsZSBvcgo+Pj4gdHJpZ2dlciBhbiBpbW1lZGlhdGUg
cmVrZXlpbmcgaWYgaGUgd2FudHMuCj4+Pgo+Pj4gQmVzaWRlcywgdGhlcmUgd2lsbCBiZSBhIHBh
dGNoIGluIHRoZSAnaXByb3V0ZTIvdGlwYycgaW5jbHVkaW5nIHRoZSBuZXcKPj4+ICd0aXBjIG5v
ZGUgc2V0IGtleScgY29tbWFuZCBvcHRpb25zLCBiYXNpY2FsbHkgaXQgd2lsbCBsb29rIGxpa2Ug
dGhpczoKPj4+Cj4+PiAtLS0tLS0tLS0KPj4+ICR0aXBjIG5vZGUgc2V0IGtleSAtLWhlbHAKPj4+
IFVzYWdlOiB0aXBjIG5vZGUgc2V0IGtleSBLRVkgW2FsZ25hbWUgQUxHTkFNRV0gW1BST1BFUlRJ
RVNdCj4+PiAgICAgICAgICB0aXBjIG5vZGUgc2V0IGtleSByZWtleWluZyBSRUtFWUlORwo+Pj4K
Pj4+IEtFWQo+Pj4gICAgIFN5bW1ldHJpYyBLRVkgJiBTQUxUIGFzIGEgY29tcG9zaXRlIEFTQ0lJ
IG9yIGhleCBzdHJpbmcgKDB4Li4uKSBpbiBmb3JtOgo+Pj4gICAgIFtLRVk6IDE2LCAyNCBvciAz
MiBvY3RldHNdW1NBTFQ6IDQgb2N0ZXRzXQo+Pj4KPj4+IEFMR05BTUUKPj4+ICAgICBDaXBoZXIg
YWxnb3JpdGhtIFtkZWZhdWx0OiAiZ2NtKGFlcykiXQo+Pj4KPj4+IFBST1BFUlRJRVMKPj4+ICAg
ICBtYXN0ZXIgICAgICAgICAgICAgICAgLSBTZXQgS0VZIGFzIGEgY2x1c3RlciBtYXN0ZXIga2V5
Cj4+PiAgICAgPGVtcHR5PiAgICAgICAgICAgICAgIC0gU2V0IEtFWSBhcyBhIGNsdXN0ZXIga2V5
Cj4+PiAgICAgbm9kZWlkIE5PREVJRCAgICAgICAgIC0gU2V0IEtFWSBhcyBhIHBlci1ub2RlIGtl
eSBmb3Igb3duIG9yIHBlZXIKPj4+Cj4+PiBSRUtFWUlORwo+Pj4gICAgIElOVEVSVkFMICAgICAg
ICAgICAgICAtIFNldCByZWtleWluZyBpbnRlcnZhbCAoaW4gbWludXRlcykgWzA6IGRpc2FibGVd
Cj4+PiAgICAgbm93ICAgICAgICAgICAgICAgICAgIC0gVHJpZ2dlciBvbmUgKGZpcnN0KSByZWtl
eWluZyBpbW1lZGlhdGVseQo+Pj4KPj4+IEVYQU1QTEVTCj4+PiAgICAgdGlwYyBub2RlIHNldCBr
ZXkgMHg3NDY4Njk3MzVGNjk3MzVGNjE1RjZCNjU3OTMxMzY1RjczNjE2Qzc0Cj4+PiAgICAgdGlw
YyBub2RlIHNldCBrZXkgdGhpc19pc19hX2tleTE2X3NhbHQgYWxnbmFtZSAiZ2NtKGFlcykiIG5v
ZGVpZCAxMDAxMDAyCj4+PiAgICAgdGlwYyBub2RlIHNldCBrZXkgdGhpc19pc19hX21hc3Rlcl9r
ZXkgbWFzdGVyIHJla2V5aW5nIG5vdwo+Pj4gICAgIHRpcGMgbm9kZSBzZXQga2V5IHJla2V5aW5n
IDYwMAo+Pj4gLS0tLS0tLS0tCj4+Pgo+Pj4gU28sIHBsZWFzZSBoZWxwIGNoZWNrIHRoZSBwYXRj
aGVzIGFuZCBnaXZlIHlvdXIgY29tbWVudHMsIHRoYW5rcyBhIGxvdCEKPj4+Cj4+PiBCUi9UdW9u
Zwo+PiBJIGhhdmVuJ3QgcmV2aWV3ZWQgdGhpcyB5ZXQsIGJ1dCBzdGlsbCBoYXZlIGEgY29tbWVu
dCBhbmQgYSBxdWVzdGlvbi4KPj4gMSkgSXQgd291bGQgc291bmQgbGVzcyBzY2FyeSBpZiB3ZSBj
YWxsIHRoaXMgYSAiY2x1c3RlciBrZXkiIGluc3RlYWQgb2YKPj4gYSAibWFzdGVyIGtleSIKPiBZ
ZXMsIGluIHRlcm1zIG9mIGVuY3J5cHRpb24vZGVjcnlwdGlvbiwgYSAibWFzdGVyIGtleSIgaXMg
YWN0dWFsbHkgYSAiY2x1c3RlciBrZXkiIChiZWNhdXNlIHRoZSBzYW1lIGtleSB3aWxsIGJlIHVz
ZWQgZm9yIGJvdGggVFgvUlggaW4gY2x1c3Rlci4uLikgYnV0IGl0IGlzIGEgYml0IGRpZmZlcmVu
dCBmcm9tIG91ciB0cmFkaXRpb25hbCBjbHVzdGVyIG9yIHBlci1ub2RlIGtleSBjb25jZXB0cyBp
biB0ZXJtcyBvZiB1c2Ugb3Iga2V5IG1hbmFnZW1lbnQsIGVzcGVjaWFsbHkgYnkgdGhlIGZvbGxv
d2luZyBwb2ludHM6Cj4gLSBUaGUgbWFzdGVyIGtleSB3aWxsIG5vdCBiZSB1c2VkIGZvciBkYXRh
IG9yIHRyYWZmaWMgZW5jcnlwdGlvbiBsaWtlIG91ciB0cmFkaXRpb25hbCBrZXlzLCBidXQgYWN0
IGxpa2UgYSAia2V5LWVuY3J5cHRpb24ga2V5IiB0byBlbmNyeXB0IHRob3NlIHN1Ym9yZGluYXRl
IGRhdGEga2V5cyAoaS5lLiBpbiB0aGUga2V5IGV4Y2hhbmdlKS4KPiAtIFRoZSBtYXN0ZXIga2V5
IHNob3VsZCBiZSBhIGxvbmctdGVybSBvciBzdGF0aWMga2V5LCBpbnN0ZWFkIG9mIHRoZSB0cmFk
aXRpb25hbCBvbmVzIHdoaWNoIHdpbGwgYmUgImVwaGVtZXJhbCIgKGkuZS4gaW4gdGhlIHJla2V5
aW5nLi4uKS4KPiAtIFRoZSBtYXN0ZXIga2V5IHdpbGwgYWxsb3cgYSBuZXcgbm9kZSB0byBqb2lu
IHRoZSBjbHVzdGVyIHdoZW4gaXQgY29tcGxldGVseSBkb2Vzbid0IGtub3cgd2hhdCB0aGUgY3Vy
cmVudCBhY3RpdmUgKGVwaGVtZXJhbCkga2V5cyBpbiB0aGUgZXhpc3Rpbmcgbm9kZXMuIEl0IHdp
bGwgYWxzbyBhY3QgbGlrZSBhbiAiYXV0aGVudGljYXRpb24iIGtleSwgc28gZW5zdXJlIHRoYXQg
dGhlIG5ldyBub2RlIGhhcyB0aGUgcmlnaHQgYXV0aGVudGljaXR5IGZpcnN0Lgo+IC0gVGhlIG1h
c3RlciBrZXkgd2lsbCBiZSBhbG1vc3QgdGhlIG9ubHkga2V5IHRoYXQgbmVlZHMgdG8gYmUgcHJv
dmlkZWQgYnkgKHByaXZpbGVnZWQpIHVzZXIsIGFsb25nIHdpdGggdGhlIG90aGVyIGF1dG9tYXRp
YyBrZXkgbWVjaGFuaXNtcyB3ZSBwcm92aWRlIGhlcmUsICJlcGhlbWVyYWwiIGtleXMgd2lsbCBi
ZSBnZW5lcmF0ZWQvdXNlZCBmb3IgYWxsIHRoZSBUSVBDIHRyYWZmaWMgZW5jcnlwdGlvbiBmcmVx
dWVudGx5LCBzbyBnZXR0aW5nIGEgaGlnaGVyIHNlY3VyZSBsZXZlbC4KPiBTbywgSSB0aGluayB3
ZSBjYW4gY2FsbCBpdCBhcyBhICJjbHVzdGVyIG1hc3RlciBrZXkiLCBqdXN0IHRvIGRpc3Rpbmd1
aXNoIGl0IGZyb20gdGhlICJjbHVzdGVyIGtleSIgd2hpbGUgc3RpbGwgcmV0YWluIGl0cyBuYXR1
cmUg8J+Yii4KT3IganVzdCAiYXV0aGVudGljYXRpb24ga2V5IiwgZXZlbiBpZiB0aGF0IGlzIG5v
dCB0aGUgd2hvbGUgdHJ1dGguIFRoZSAKcmVndWxhciBlbmNyeXB0aW9uIGtleXMgY2FuIGJlIHJl
ZmVycmVkIHRvIGFzIHNlc3Npb24ga2V5cy4KPgo+PiAyKSBEbyB5b3UgaGF2ZSBhbnkgdGhvdWdo
dHMgYWJvdXQgaG93IHdlIGNhbiByZXBsYWNlIHRoaXMga2V5IGlmIGl0IGV2ZXIKPj4gZ2V0cyBj
b21wcm9taXNlZD8KPj4gICAgICAgVG8gbWUgaXQgc291bmRzIGxpa2Ugd2lsbCBuZWVkIGEgdXNl
ciBzcGFjZSBUTFMgYmFzZWQgZnJhbWV3b3JrCj4+IGFmdGVyIGFsbCB0byBhY2hpZXZlIHRoaXMu
Cj4gWWVzLCBJIGhhdmUgdGhvdWdodCBhYm91dCB0aGlzLiBJdCB3aWxsIHJlcXVpcmUgYSAiZnJh
bWV3b3JrIiBmb3Igc2V0dGluZyBvciB1cGRhdGluZyB0aGUgc2FtZSBtYXN0ZXIga2V5IGluIHRo
ZSBjbHVzdGVyLCBidXQgaXQgd2lsbCBiZSBtdWNoIHNpbXBsZXIgbm93IHNpbmNlIHRoYXQgaXMg
dGhlIG9ubHkgb25lIHdlIG5lZWQgKGFzIHNhaWQgYWJvdmUpLi4uIEluIGEgc2VjdXJlIHN5c3Rl
bSwgSSBiZWxpZXZlIHRoZXkgaGFkIHN1Y2ggYSBmcmFtZXdvcmsgYWxyZWFkeSwgbGlrZSBhICJz
ZWN1cml0eSBzZXJ2aWNlIiBmb3IgdGhlIHdob2xlIGNsdXN0ZXIgc3lzdGVtICh1c2VkIGZvciBT
U0gsIENMSSwgZXRjLi4uIG5vdCBvbmx5IFRJUEMpLCBmb3IgZXhhbXBsZTogdGhlIGtleSBjYW4g
YmUgc2ltcGx5IHN0b3JlZCBpbiBhIHByaXZhdGUvcHJvdGVjdGVkIGRpcmVjdG9yeSBvciBkYXRh
YmFzZSB3aGljaCBpcyBzaGFyZWQgYmV0d2VlbiBub2RlcyBpbiB0aGUgY2x1c3Rlci4gU28gb25j
ZSBpdCBpcyB1cGRhdGVkLCB0aGUga2V5IHdpbGwgYmUgc2VudCB0byBUSVBDIGFuZCBzZXQgYXMg
dGhlIG1hc3RlciBrZXksIHRoYXQncyBpdC4KPgo+IEluIGdlbmVyYWwsIHRoZSBhY2hpZXZlbWVu
dCBmcm9tIHRoZXNlIGNvbW1pdHMgaXMgdG8gbWFrZSB0aGluZ3MgbXVjaCBjb252ZW5pZW50IGZv
ciB1c2VyIChoZSBqdXN0IG5lZWRzIHRvIHNldCB0aGUgbWFzdGVyIGtleS4uLikgYnV0IGhlbHAg
aW5jcmVhc2UgdGhlIHNlY3VyaXR5IGZvciBUSVBDIGVuY3J5cHRpb24gc2luY2UgdGhlIHRyYWZm
aWMgZW5jcnlwdGlvbiBrZXlzIGNhbiBiZSByZXBsYWNlZCB2ZXJ5IGZyZXF1ZW50bHkgbm93Li4u
Cj4KPiBCUi9UdW9uZwpZZXMsIEkgdG90YWxseSBhZ3JlZS4gSSB3aWxsIHJldmlldyB0aGlzIGxh
dGVyIHRoaXMgd2Vlay4KCi8vL2pvbgoKPj4gUmVnYXJkcwo+PiAvLy9qb24KPj4KPj4+IFR1b25n
IExpZW4gKDUpOgo+Pj4gICAgIHRpcGM6IGZpeCB1c2luZyBzbXBfcHJvY2Vzc29yX2lkKCkgaW4g
cHJlZW1wdGlibGUKPj4+ICAgICB0aXBjOiBvcHRpbWl6ZSBrZXkgc3dpdGNoaW5nIHRpbWUgYW5k
IGxvZ2ljCj4+PiAgICAgdGlwYzogaW50cm9kdWNlIGVuY3J5cHRpb24gbWFzdGVyIGtleQo+Pj4g
ICAgIHRpcGM6IGFkZCBhdXRvbWF0aWMgc2Vzc2lvbiBrZXkgZXhjaGFuZ2UKPj4+ICAgICB0aXBj
OiBhZGQgYXV0b21hdGljIHJla2V5aW5nIGZvciBlbmNyeXB0aW9uIGtleQo+Pj4KPj4+ICAgIGlu
Y2x1ZGUvdWFwaS9saW51eC90aXBjLmggICAgICAgICB8ICAgMiArCj4+PiAgICBpbmNsdWRlL3Vh
cGkvbGludXgvdGlwY19uZXRsaW5rLmggfCAgIDIgKwo+Pj4gICAgbmV0L3RpcGMvY3J5cHRvLmMg
ICAgICAgICAgICAgICAgIHwgOTg2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tCj4+PiAgICBuZXQvdGlwYy9jcnlwdG8uaCAgICAgICAgICAgICAgICAgfCAgNDEgKy0KPj4+
ICAgIG5ldC90aXBjL2xpbmsuYyAgICAgICAgICAgICAgICAgICB8ICAgNSArCj4+PiAgICBuZXQv
dGlwYy9tc2cuaCAgICAgICAgICAgICAgICAgICAgfCAgMTAgKy0KPj4+ICAgIG5ldC90aXBjL25l
dGxpbmsuYyAgICAgICAgICAgICAgICB8ICAgMiArCj4+PiAgICBuZXQvdGlwYy9ub2RlLmMgICAg
ICAgICAgICAgICAgICAgfCAgODkgKystLQo+Pj4gICAgbmV0L3RpcGMvbm9kZS5oICAgICAgICAg
ICAgICAgICAgIHwgICAyICsKPj4+ICAgIG5ldC90aXBjL3N5c2N0bC5jICAgICAgICAgICAgICAg
ICB8ICAgOSArCj4+PiAgICAxMCBmaWxlcyBjaGFuZ2VkLCA4NjIgaW5zZXJ0aW9ucygrKSwgMjg2
IGRlbGV0aW9ucygtKQo+Pj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
