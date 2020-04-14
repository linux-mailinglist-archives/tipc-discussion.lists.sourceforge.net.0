Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3281A8C2C
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 22:20:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOS2W-0005Ge-Dx; Tue, 14 Apr 2020 20:20:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jOS2T-0005GP-Ed
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 20:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KLaLRPM3asFsrBPDrkwuYsB+p0GAmTue2Am5XN1JsV0=; b=g4y9A14vnRXJyzeC0FmREWhyMr
 tCi667VCZ74Yi+IbygVwOT2jQEAsqYsvt129GXDCfNws+PAeeWrkIs8dYUuklHZnacWBR42yV9QU3
 ahGPp1T5B9xr5HCdE7r0co6PM4HwIxzYi/6KMkQzY2CBbPnD5LxZzUMckkrvU+sAqKjw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KLaLRPM3asFsrBPDrkwuYsB+p0GAmTue2Am5XN1JsV0=; b=Q4Ob/BumUj9ypHNbZ5UMI+/Ch3
 MlD2crdXeLfuCv+OvyUMq5VBvy7u87CcNS1sj5HHyr9a6CF1XCMpPXE5zkk1VDgcIGAr4H7D3o6wP
 lJLRwyEt8/VmMWHf2+KIa4mDwOzpBx/k+FFwE2pa90UFKBvRrHFICIbwYamF+L6JxbIs=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOS2P-00FDcc-Pj
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 20:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586895599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KLaLRPM3asFsrBPDrkwuYsB+p0GAmTue2Am5XN1JsV0=;
 b=Wh83XHvKvmPXqQsE2+YmmRtQBmgDGKuvFpxXJReSoIKrTq6jijRPTyYnb+DOS5oegTvuAK
 QmMEZd2Sbp2K6pJId6gPWxFWMQqJiGNXaQikJDVNmU3YF1bZi1dK1s/xrauT39egQjgKK9
 yYX4n1YnPZ1ZwA2/uwNctaJmNPVjicc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207--xmrvBdYOWmgfC5Ygm-O_Q-1; Tue, 14 Apr 2020 16:19:57 -0400
X-MC-Unique: -xmrvBdYOWmgfC5Ygm-O_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 545E618C43C0;
 Tue, 14 Apr 2020 20:19:56 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2EF4B5C1B2;
 Tue, 14 Apr 2020 20:19:54 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion (tipc-discussion@lists.sourceforge.net)"
 <tipc-discussion@lists.sourceforge.net>
References: <1572440441-474-1-git-send-email-jon.maloy@ericsson.com>
 <20191030.121657.2103053708806525889.davem@davemloft.net>
 <AM6PR0502MB392565A1B329E99471270B3BE2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <2686f0e2-d0f3-bb01-368f-d81d38fc5b7d@redhat.com>
Date: Tue, 14 Apr 2020 16:19:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB392565A1B329E99471270B3BE2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jOS2P-00FDcc-Pj
Subject: Re: [tipc-discussion] FW: [net-next 1/1] tipc: add smart nagle
 feature
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

CgpPbiA0LzE0LzIwIDU6NTcgQU0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToKPiBIaSBKb24sCj4K
PiBBcyBtZW50aW9uZWQgaW4gdGhlIGxhc3QgbWVldGluZywgd2UgZ290IGEgcmVwb3J0IGZyb20g
Y3VzdG9tZXIgdGhhdCBUSVBDIGhhcyBzb21lIGxhdGVuY3kgaW5jcmVhc2VkICh+IDMwLTUwJSkg
aW4gbWVzc2FnZSBzdHJlYW1pbmcsIGl0J3MgYWZ0ZXIgYmFja3BvcnRpbmcgc29tZSByZWNlbnQg
cGF0Y2hlcy4gQnkgb25seSBkaXNhYmxpbmcvZW5hYmxpbmcgdGhlIE5hZ2xlIGZlYXR1cmUsIHdl
IGFyZSBub3cgYWJsZSB0byBjb25maXJtIHRoaXMgTmFnbGUgcGF0Y2ggY2F1c2luZyB0aGUgbGF0
ZW5jeSBpc3N1ZS4KPgo+IFdlIG1heSBuZWVkIHRvIHR1cm4gdGhpcyBmZWF0dXJlIG9mZiBieSBk
ZWZhdWx0IChpLmUuIGluaXRpYWxpemluZyAndHNrLT5ub2RlbGF5ID0gdHJ1ZScpIGJ1dCBsaWtl
bHkgbm8gb25lIHdpbGwgdHJ5IHRvIHR1cm4gaXQgb24gYWdhaW4gYnkgc2V0dGluZyAnVElQQ19O
T0RFTEFZJyA9IGZhbHNlIOKYuS4gSG93ZXZlciwgSSB3b25kZXIgaWYgdGhhdCBpbmNyZWFzZSBp
biBsYXRlbmN5IGlzIGV4cGVjdGVkLCBzaW5jZSB3ZSBkZWNsYXJlZCB0aGF0IGl0IG11c3QgYmUg
PCAxIFJUVC4uLj8KPiBOb3cgd2hlbiB0ZXN0aW5nIHdpdGggb3VyIGJlbmNobWFyayB0b29sLCBJ
IGNhbiBpbmRlZWQgb2JzZXJ2ZSBhIGxhcmdlIGRlbGF5LCBzb21lIG1lc3NhZ2VzIGhhdmUgYmVl
biBidW5kbGVkIGFuZCBxdWV1ZWQgaW4gdGhlIHNvY2tldCBiYWNrbG9nIGZvciBodW5kcmVkcyBv
ZiBtaWxsaXNlY29uZHMgYmVmb3JlIHRoZXkgY291bGQgYmUgc2VudCBvdXQgd2hlbiB0aGUgcmVx
dWlyZWQgJ0FDSycgY2FtZS4gSSBoYXZlIHNvbWUgY29uY2VybnMgaGVyZToKPgo+IDEpIE9uIHRo
ZSByZWNlaXZpbmcgc2lkZSwgdGhlIHJlcXVpcmVkICdBQ0snIGlzIG9ubHkgZG9uZSB3aGVuIGFw
cGxpY2F0aW9uIGFjdHVhbGx5IGdldHMgdGhlIHdob2xlIGRhdGEuIEV2ZW4gaWYgb25seSBwYXJ0
IG9mIHRoZSBsYXN0IGJ1bmRsZSBpcyByZWNlaXZlZCwgd2Ugd2lsbCBub3QgZG8gdGhlICdBQ0sn
IGFzIHJlcXVpcmVkLiBXaHkgZG8gd2UgbmVlZCB0byBkbyB0aGF0IHNvIHN0cmljdGx5PyBUaGlz
IHdpbGwgY2F1c2Ugc29tZSBsYXRlbmN5IHNpbmNlIHRoZSByZWNlaXZlciBkb2Vzbid0IGFsd2F5
cyBnZXQgdGhlIG1lc3NhZ2UgYXMgcXVpY2sgYXMgdGhlIHNlbmRlci4gSSB0aGluayB3ZSBjYW4g
c2VwYXJhdGUgaXQgZnJvbSB0aGUgdHJhZGl0aW9uYWwgJ0NPTk5fQUNLJyB3aGljaCBpcyBmb3Ig
dGhlIHJlY2VpdmVyIGJ1ZmZlciBmbG93IGNvbnRyb2wsIHRoZSBOYWdsZSAnQUNLJyBzaG91bGQg
YmUgZG9uZSBhcyBzb29uIGFzIHBvc3NpYmxlIGkuZS4ganVzdCBhZnRlciB0aGUgbGluayBsYXll
ciB0aGF0IGluZGljYXRlcyB0aGUgcmVjZWl2aW5nIHNpZGUgaGFzIGdvdCB0aGUgYnVuZGxlcywg
c28gdGhlIHNlbmRpbmcgc2lkZSBjYW4gcHVzaCB0aGUgbmV4dCBvbmVzIGlmIGFueT8KWWVzLCBJ
IG5vdyByZW1lbWJlciB0aGF0IEkgdGhvdWdodCBhYm91dCB0aGlzIG15c2VsZjsgdGhhdCB3ZSBj
b3VsZCBzZW5kIAp0aGUgQUNLIGFscmVhZHkgaW4gdGlwY19za19maWx0ZXJfY29ubmVjdCgpLCBi
dXQgSSBkZWVtZWQgdGhhdCB3YXMgCnNsaWdodGx5IG1vcmUgY29tcGxleCBhbmQgdGhhdCBzZW5k
aW5nwqAgQUNLIGluIHRpcGNfc2tfcmVjdnN0cmVhbSgpIAp3b3VsZCBiZSBmYXN0IGVub3VnaC4g
SSB3YXMgY2xlYXJseSB3cm9uZyBpbiB0aGF0IGRlY2lzaW9uLiBNeSBjb25jZXJuIAp3YXMgYWxz
byB0aGF0IFJUVCBjb3VsZCBiZWNvbWUgdG9vIHNob3J0LCBzbyB0aGF0IGZld2VyIG1lc3NhZ2Vz
IHdvdWxkIApiZSBidW5kbGVkLCB3aXRoIGxvd2VyIHRocm91Z2hwdXQgYXMgcmVzdWx0LgoKT2J2
aW91c2x5IHdlIHNob3VsZCB0cnkgdGhpcyBjaGFuZ2UgYW5kIHNlZSB3aGF0IGl0IGJyaW5ncy4g
VGhlIGxvbmdlciAKbGF0ZW5jeSBpcyB1bmFjY2VwdGFibGUsIHNvIHdlIG1lIG11c3QgYmUgcmVh
ZHkgdG8gc2FjcmlmaWNlIHNvbWUgCnRocm91Z2hwdXQgaW4gdGhpcyBjYXNlIGlmIG5lY2Vzc2Fy
eS4gV2UgY291bGQgZXZlbiBzZW5kIHRoZSBBQ0sgCmVhcmxpZXIsIGRpcmVjdGx5IGZyb20gd2hl
cmUgdGhlIGxpbmsgYWRkcyB0aGUgbWVzc2FnZSB0byBpbnB1dHEsIGJ1dCAKdGhhdCB3aWxsIGNv
c3QgbW9yZSBDUFUgY3ljbGVzIGFuZCBJIGRvdWJ0IHRoYXQgd2lsbCBtYWtlIG11Y2ggZGlmZmVy
ZW5jZS4KCj4KPiAyKSBUaGUgJ3Rzay0+b25ld2F5JyBkb2Vzbid0IHJlYWxseSBtYWtlIHNlbnNl
IGFzIGl0IGlzIG9ubHkgcmVzZXQgYWZ0ZXIgdGhlIHBlZXIgc2VuZHMgYmFjayBhIGRhdGEgbWVz
c2FnZS4gSW4gY2FzZSB0aGVyZSBpcyBvbmx5IG9uZSBzaWRlIHNlbmRpbmcgZGF0YSBvbiBhIHNv
Y2tldCAobGlrZSBvdXIgYmVuY2htYXJrIHRvb2wpLCB0aGUgY291bnRlciBqdXN0IGtlZXBzIGlu
Y3JlYXNpbmcsIHNvIHdlIG5ldmVyIGxlYXZlIHRoZSBOYWdsZSBtb2RlIGFmdGVyIGVudGVyaW5n
Li4uClRoYXQgaXMgdGhlIHBvaW50LiBXaHkgd291bGQgd2Ugd2FudCB0byBsZWF2ZSBuYWdsZSBt
b2RlIGlmIHRyYWZmaWMgb25seSAKZ29lcyBpbiBvbmUgZGlyZWN0aW9uPwo+IERvIHdlIG5lZWQg
dG8gZm9yY2UgaXQgdG8gbGVhdmUgdGhlIE5hZ2VsIG1vZGUgc29tZWhvdywgZm9yIGV4YW1wbGU6
IHdoZW4gcmVjZWl2aW5nIHRoZSBOYWdsZSAnQUNLJyB3aXRob3V0IGFueSBidW5kbGVzIHRvIGJl
IHB1c2hlZD8KSW4gcHJhY3RpY2Ugd2UgZG8gdGhhdCBhbHJlYWR5LiBXaGVuIHdlIHJlY2VpdmUg
YW4gQUNLIGFuZCB0aGUgc2VuZCAKcXVldWUgaXMgZW1wdHksIHdlIGVudGVyIHRoZSBzdGF0ZSAi
bm8gb3V0c3RhbmRpbmcgYWNrcyIsIGFuZCB0aGUgbmV4dCAKbWVzc2FnZSB3aWxsIGJlIHNlbnQg
aW1tZWRpYXRlbHksIHdpdGggdGhlIG5lZWRfYWNrIGJpdCBzZXQuIEJ1dCB3ZSBhcmUgCnN0aWxs
IGluIG5hZ2xlIG1vZGUgZm9yIHRoZSBmb2xsb3dpZyBtZXNzYWdlLCBhcyB3ZSBzaG91bGQgYmUu
Cj4KPiAzKSBEbyB5b3UgaGF2ZSBhbnkgb3RoZXIgaWRlYXMgdGhhdCBjb3VsZCBjYXVzZSB0aGUg
bGF0ZW5jeSBpbmNyZWFzZT8KTm8uIEFuZCBJIHRoaW5rIHlvdXIgZGlhZ25vc2lzIG1ha2VzIHBl
cmZlY3RseSBzZW5zZS4gSSBzdWdnZXN0IHlvdSBnbyAKYWhlYWQgYW5kIG1vdmUgdGhlIHNlbmRp
bmcgb2YgQUNLIHRvIHRpcGNfc2tfZmlsdGVyX2Nvbm5lY3QoKSBhbmQgCm9ic2VydmUgdGhlIHJl
c3VsdC4KCkJSCi8vL2pvbgoKCj4KPiBCUi9UdW9uZwo+Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPiBGcm9tOiBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj4gU2VudDog
VGh1cnNkYXksIE9jdG9iZXIgMzEsIDIwMTkgMjoxNyBBTQo+IFRvOiBqb24ubWFsb3lAZXJpY3Nz
b24uY29tCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGx4aW5AcmVkaGF0LmNvbTsgZWR1
bWF6ZXRAZ29vZ2xlLmNvbTsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+
IFN1YmplY3Q6IFJlOiBbdGlwYy1kaXNjdXNzaW9uXSBbbmV0LW5leHQgMS8xXSB0aXBjOiBhZGQg
c21hcnQgbmFnbGUgZmVhdHVyZQo+Cj4gRnJvbTogSm9uIE1hbG95IDxqb24ubWFsb3lAZXJpY3Nz
b24uY29tPgo+IERhdGU6IFdlZCwgMzAgT2N0IDIwMTkgMTQ6MDA6NDEgKzAxMDAKPgo+PiBXZSBp
bnRyb2R1Y2UgYSBmZWF0dXJlIHRoYXQgd29ya3MgbGlrZSBhIGNvbWJpbmF0aW9uIG9mIFRDUF9O
QUdMRSBhbmQKPj4gVENQX0NPUkssIGJ1dCB3aXRob3V0IHNvbWUgb2YgdGhlIHdlYWtuZXNzZXMg
b2YgdGhvc2UuIEluIHBhcnRpY3VsYXIsCj4+IHdlIHdpbGwgbm90IG9ic2VydmUgbG9uZyBkZWxp
dmVyeSBkZWxheXMgYmVjYXVzZSBvZiBkZWxheWVkIGFja3MsIHNpbmNlCj4+IHRoZSBhbGdvcml0
aG0gaXRzZWxmIGRlY2lkZXMgaWYgYW5kIHdoZW4gYWNrcyBhcmUgdG8gYmUgc2VudCBmcm9tIHRo
ZQo+PiByZWNlaXZpbmcgcGVlci4KPj4KPj4gLSBUaGUgbmFnbGUgcHJvcGVydHkgYXMgc3VjaCBp
cyBkZXRlcm1pbmVkIGJ5IG1hbmlwdWxhdGluZyBhIG5ldwo+PiAgICAnbWF4bmFnbGUnIGZpZWxk
IGluIHN0cnVjdCB0aXBjX3NvY2suIElmIGNlcnRhaW4gY29uZGl0aW9ucyBhcmUgbWV0LAo+PiAg
ICAnbWF4bmFnbGUnIHdpbGwgZGVmaW5lIG1heCBzaXplIG9mIHRoZSBtZXNzYWdlcyB3aGljaCBj
YW4gYmUgYnVuZGxlZC4KPj4gICAgSWYgaXQgaXMgc2V0IHRvIHplcm8gbm8gbWVzc2FnZXMgYXJl
IGV2ZXIgYnVuZGxlZCwgaW1wbHlpbmcgdGhhdCB0aGUKPj4gICAgbmFnbGUgcHJvcGVydHkgaXMg
ZGlzYWJsZWQuCj4+IC0gQSBzb2NrZXQgd2l0aCB0aGUgbmFnbGUgcHJvcGVydHkgZW5hYmxlZCBl
bnRlcnMgbmFnbGUgbW9kZSB3aGVuIG1vcmUKPj4gICAgdGhhbiA0IG1lc3NhZ2VzIGhhdmUgYmVl
biBzZW50IG91dCB3aXRob3V0IHJlY2VpdmluZyBhbnkgZGF0YSBtZXNzYWdlCj4+ICAgIGZyb20g
dGhlIHBlZXIuCj4+IC0gQSBzb2NrZXQgbGVhdmVzIG5hZ2xlIG1vZGUgd2hlbmV2ZXIgaXQgcmVj
ZWl2ZXMgYSBkYXRhIG1lc3NhZ2UgZnJvbQo+PiAgICB0aGUgcGVlci4KPj4KPj4gSW4gbmFnbGUg
bW9kZSwgbWVzc2FnZXMgc21hbGxlciB0aGFuICdtYXhuYWdsZScgYXJlIGFjY3VtdWxhdGVkIGlu
IHRoZQo+PiBzb2NrZXQgd3JpdGUgcXVldWUuIFRoZSBsYXN0IGJ1ZmZlciBpbiB0aGUgcXVldWUg
aXMgbWFya2VkIHdpdGggYSBuZXcKPj4gJ2Fja19yZXF1aXJlZCcgYml0LCB3aGljaCBmb3JjZXMg
dGhlIHJlY2VpdmluZyBwZWVyIHRvIHNlbmQgYSBDT05OX0FDSwo+PiBtZXNzYWdlIGJhY2sgdG8g
dGhlIHNlbmRlciB1cG9uIHJlY2VwdGlvbi4KPj4KPj4gVGhlIGFjY3VtdWxhdGVkIGNvbnRlbnRz
IG9mIHRoZSB3cml0ZSBxdWV1ZSBpcyB0cmFuc21pdHRlZCB3aGVuIG9uZSBvZgo+PiB0aGUgZm9s
bG93aW5nIGV2ZW50cyBvciBjb25kaXRpb25zIG9jY3VyLgo+Pgo+PiAtIEEgQ09OTl9BQ0sgbWVz
c2FnZSBpcyByZWNlaXZlZCBmcm9tIHRoZSBwZWVyLgo+PiAtIEEgZGF0YSBtZXNzYWdlIGlzIHJl
Y2VpdmVkIGZyb20gdGhlIHBlZXIuCj4+IC0gQSBTT0NLX1dBS0VVUCBwc2V1ZG8gbWVzc2FnZSBp
cyByZWNlaXZlZCBmcm9tIHRoZSBsaW5rIGxldmVsLgo+PiAtIFRoZSB3cml0ZSBxdWV1ZSBjb250
YWlucyBtb3JlIHRoYW4gNjQgMWsgYmxvY2tzIG9mIGRhdGEuCj4+IC0gVGhlIGNvbm5lY3Rpb24g
aXMgYmVpbmcgc2h1dCBkb3duLgo+PiAtIFRoZXJlIGlzIG5vIENPTk5fQUNLIG1lc3NhZ2UgdG8g
ZXhwZWN0LiBJLmUuLCB0aGVyZSBpcyBjdXJyZW50bHkKPj4gICAgbm8gb3V0c3RhbmRpbmcgbWVz
c2FnZSB3aGVyZSB0aGUgJ2Fja19yZXF1aXJlZCcgYml0IHdhcyBzZXQuIEFzIGEKPj4gICAgY29u
c2VxdWVuY2UsIHRoZSBmaXJzdCBtZXNzYWdlIGFkZGVkIGFmdGVyIHdlIGVudGVyIG5hZ2xlIG1v
ZGUKPj4gICAgaXMgYWx3YXlzIHNlbnQgZGlyZWN0bHkgd2l0aCB0aGlzIGJpdCBzZXQuCj4+Cj4+
IFRoaXMgbmV3IGZlYXR1cmUgZ2l2ZXMgYSA1MC0xMDAlIGltcHJvdmVtZW50IG9mIHRocm91Z2hw
dXQgZm9yIHNtYWxsCj4+IChpLmUuLCBsZXNzIHRoYW4gTVRVIHNpemUpIG1lc3NhZ2VzLCB3aGls
ZSBpdCBtaWdodCBhZGQgdXAgdG8gb25lIFJUVAo+PiB0byBsYXRlbmN5IHRpbWUgd2hlbiB0aGUg
c29ja2V0IGlzIGluIG5hZ2xlIG1vZGUuCj4+Cj4+IEFja2VkLWJ5OiBZaW5nIFh1ZSA8eWluZy54
dWVAd2luZHJlaXZlci5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvbiBNYWxveSA8am9uLm1hbG95
QGVyaWNzc29uLmNvbT4KPiBBcHBsaWVkLCB0aGFua3MgSm9uLgo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IHRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKPiB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1
c3Npb24K
