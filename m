Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCDB216D9E
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Jul 2020 15:24:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jsnZw-0004pS-2P; Tue, 07 Jul 2020 13:24:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jsnZu-0004pL-Jm
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jul 2020 13:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6IdCpbXocVZiMJCfwtkb2s0DcmKxmzcdd90MNMKx+5c=; b=QQ1o3abmvlD0U+0Z1zigpf1EsR
 1qcn7+XeoIORzgsFQhzkkgA16UhxenyypGNqFs+gIlF9Zsi++g0dNhju+e76qL81hbCGPF6U7kU35
 4yQKXCUR7oF+eUlW2NakVzoBWaYC38Qthazxh7k3gv+AnDcuPsAc8KSh8tuAZIlkn1fg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6IdCpbXocVZiMJCfwtkb2s0DcmKxmzcdd90MNMKx+5c=; b=j6gd4C6fHNklZT4K/U9bwzfJxi
 IwV+6dgz5MD5+0/5OSI0IU/wSS7OVlp/iniYAWYiDMz8qCLdBtKe4mguhYuXKtyhkzUOTDsOapk3w
 E1+F5X2etSug4SFJEF1AUsA7w9Fcdw2ZvOmu6TfyEskmCsVnqLvhuHaV3XXjWD3CoRJc=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jsnZs-00GBqe-T8
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jul 2020 13:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594128239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6IdCpbXocVZiMJCfwtkb2s0DcmKxmzcdd90MNMKx+5c=;
 b=EfaEfgw89NQ3xNpOuSFbyWxDJ68FejZchAMoReKYTRKi5wWGvEGSXd8QMaW8TpLdzrf8G+
 lso2HOWIIY3BBXlFhE4VxneVJ8FnNFHRwuqYu9kEM5WZdqKCHAuhjRK2XuePv6bhoXjwob
 KSXb55SdFUk5ek7mjATQKtSqtTyF5aI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-408-uMx0YMNSMcSJ88oVO5tGjg-1; Tue, 07 Jul 2020 09:23:57 -0400
X-MC-Unique: uMx0YMNSMcSJ88oVO5tGjg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89AAF107ACF2;
 Tue,  7 Jul 2020 13:23:53 +0000 (UTC)
Received: from [10.10.117.32] (ovpn-117-32.rdu2.redhat.com [10.10.117.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50D80C0062;
 Tue,  7 Jul 2020 13:23:52 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
 <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
 <AM6PR0502MB3925E154B7FE11260E4434CBE26C0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
 <6176fdec-0587-0284-1ba2-f6bd699d641a@redhat.com>
 <540044fd-b541-ff83-a512-04870983ddc1@redhat.com>
 <AM6PR0502MB3925CD9912C5AB5D251E1933E26A0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <f955fcd6-e70e-dd34-9905-4ef50af62795@redhat.com>
Date: Tue, 7 Jul 2020 09:23:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB3925CD9912C5AB5D251E1933E26A0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jsnZs-00GBqe-T8
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect unicast link window
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

CgpPbiA3LzMvMjAgMTI6NDggQU0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToKPgo+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29t
Pgo+PiBTZW50OiBGcmlkYXksIEp1bHkgMywgMjAyMCA1OjM2IEFNCj4+IFRvOiBUdW9uZyBUb25n
IExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT47IG1hbG95QGRvbmpvbm4uY29tOyB5
aW5nLnh1ZUB3aW5kcml2ZXIuY29tOyB0aXBjLQo+PiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldAo+PiBDYzogdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1Pgo+PiBTdWJq
ZWN0OiBSZTogW3RpcGMtZGlzY3Vzc2lvbl0gW25ldF0gdGlwYzogZml4IGluY29ycmVjdCB1bmlj
YXN0IGxpbmsgd2luZG93Cj4+Cj4+Cj4+Cj4+IE9uIDcvMi8yMCA2OjI4IFBNLCBKb24gTWFsb3kg
d3JvdGU6Cj4+ClsuLi5dCj4+PiBUaGlua2luZyBtb3JlIGFib3V0IHRoaXMsIEkgd291bGQgZ28g
Zm9yIHRoZSBzZWNvbmQgb3B0aW9uLgo+Pj4gRWl0aGVyIHdheSB3ZSB3aWxsIGhhdmUgdG8gYmUg
cmVhZHkgdG8gZXhwbGFpbiB0byB0aGUgdXNlcnMgd2h5IHdlCj4+PiBoYXZlIG1hZGUgdGhpcyBj
aGFuZ2UsIGFuZCB0aGF0IHRoZXJlIGlzIG5vIHJlYXNvbiBmb3IgdGhlbSB0byB0b3VjaAo+Pj4g
dGhpcyB2YWx1ZSBpbiB0aGUgZnV0dXJlLgo+Pj4KPiBBbiBhbHRlcm5hdGl2ZSBpcyB0byBpbnRy
b2R1Y2UgYW4gYWRkaXRpb25hbCBwcm9wZXJ0eSBmb3IgdXNlciB0byBzZXQvZ2V0IHRoZSBsaW5r
IG1heCB3aW5kb3cgd2hpY2ggd2lsbCBiZSA4MTkxIGJ5IGRlZmF1bHQgYW5kIGtlZXAgdGhlIGxl
Z2FjeSBvbmUgYnV0IGZvciB0aGUgbGluayBtaW4gd2luZG93IGluc3RlYWQuIFRoaXMgd2F5LCB3
ZSBoYXZlIG5vIGJhY2t3YXJkIGNvbXBhdGlibGUgaXNzdWVzIHdoaWxlIHN0aWxsIGNhbiBnbyBi
ZXlvbmQgdGhhdCB1cCB0byB0aGUgbWF4IHZhbHVlIHdoaWNoIGlzIGZ1bGx5IHVuZGVyIGNvbnRy
b2wgYXMgd2VsbCAoaWYgaGUvc2hlIHdhbnRzIHRvIGxpbWl0IHRoZSB0aHJlc2hvbGQsIGUuZy4g
Zm9yIG90aGVyIHRyYWZmaWMgbGlrZSBUQ1AsIGV0Yy4sIGhlIGNhbiBjb25zaWRlciB0byBsb3dl
ciB0aGUgbWF4IHdpbmRvdy4uLikuCj4gSW4gYWRkaXRpb24sIHdlIHdpbGwgc3RpbGwgcmV0YWlu
IHRoZSB0cnVlIG1lYW5pbmcgb2YgdGhlIHdpbmRvdyBzZXR0aW5nCkNoYW5naW5nIHRoZSBtZWFu
aW5nIG9mIHRoaXMgc2V0dGluZyBmcm9tICJtYXhpbXVtIHdpbmRvdyIgdG8gIm1pbmltdW0gCndp
bmRvdyIgaXMgZm9yIG1lIGEgZmFyIGJpZ2dlciBzZW1hbnRpYyBjaGFuZ2UgdGhhdCBjaGFuZ2lu
ZyBpdCBmcm9tIAoibWF4aW11bSB3aW5kb3ciIHRvICJ1cHBlciBsaW1pdCBmb3IgbWF4aW11bSB3
aW5kb3ciIGFzIHdlIGhhdmUgZG9uZS4gSSAKZmVhciB0aGlzIHdpbGwgYmUgZXZlbiBtb3JlIGNv
bmZ1c2luZyBmb3IgdGhlIHVzZXIuCkFuZCB3ZSB3b3VsZCBoYXZlIHRvIHNldCBhIGxpbWl0ICJt
YXhpbXVtIG1pbmltdW0gd2luZG93IiB0byBhdm9pZCB0aGF0IAp0aGUgdXNlciBzY3Jld3MgdXAg
cGVyZm9ybWFuY2UuIFdoYXQgc2hvdWxkIHRoYXQgYmU/IFNob3VsZCB3ZSBtYWtlIGV2ZW4gCnRo
YXQgbGltaXQgY29uZmlndXJhYmxlPyBBbmQgc29tZSB1c2VycyBtaWdodCBzdGlsbCBzZWUgdGhl
aXIgY3VycmVudCAKc2V0dGluZyBiZWluZyByZWplY3RlZCwgd2hpY2ggSSBzdXNwZWN0IGlzIGV4
YWN0bHkgd2hhdCB0aGV5IHdhbnQgdG8gCmF2b2lkLCBhbmQgdGhlIHJlYXNvbiBmb3IgdGhpcyBp
c3N1ZSBiZWluZyByYWlzZWQgYXQgYWxsLgo+IGZyb20gdXNlciB0aGF0IGluY3JlYXNpbmcgdGhl
IG1pbiB3aW5kb3cgd2lsbCBoZWxwIGluY3JlYXNlIHBlcmZvcm1hbmNlIHNvbWV3aGF0IChpLmUu
IHNob3J0ZW4gdGhlIHNsb3cgc3RhcnQgcGhhc2UpIGFuZCB2aWNlIHZlcnNhLCB0aGUgc2FtZSBo
YXBwZW5zIGZvciB0aGUgbWF4IHdpbmRvdyBzZXR0aW5nIGFzIHdlbGwuCkkgdGhpbmsgdGhlIHJp
c2sgaXMgb2J2aW91cyB0aGF0IHRoZSB1c2VyIGFueXdheSB3aWxsIHJ1biBpbnRvIApzdXJwcmlz
ZXMuIElmIGhlIGhhcyBzZXQgaGlzIHdpbmRvdyB0byBlLmcuIDMwMCBoZSB3aWxsIGVuZCB1cCB3
aXRoIG5vIApzbG93IHN0YXJ0IGF0IGFsbCwgb3IgaGlzIHNldHRpbmcgYmVpbmcgcmVqZWN0ZWQu
IFNvIGhlIHdvdWxkIGJlIGJldHRlciAKb2ZmIHJlbW92aW5nIHRoaXMgc2V0dGluZyBhbnl3YXku
Cj4gV2UgY2FuIGFsc28gZGlzcGxheSB0aGUgbWF4IHZhbHVlIGluIHRoZSBsaW5rIHN0YXRpc3Rp
Y3MgKGZvciBleGFtcGxlLCAiV2luZG93OiA1MCBwYWNrZXRzLCB1cCB0byA4MTkxIiBvciAiV2lu
ZG93OiAxMjMgcGFja2V0cywgcmFuZ2UgNTAgLSA4MTkxIikgd2hpY2ggYWN0cyBsaWtlIGEgInN0
YXRlbWVudCIKb3IgbWF5YmUgV2luZG93IChtaW4uLmN1ci4ubWF4KTrCoCBbNTAuLjEyMy4uMTAw
MF0gcGFja2V0cz8/ClRoaXMgaXMgbm90IGEgYmFkIGlkZWEsIHdoYXRldmVyIHNvbHV0aW9uIHdl
IGNob29zZS4KCj4gc2F5aW5nIHRoYXQgd2UgY3VycmVudGx5IHN1cHBvcnQgdmFyaWFibGUgd2lu
ZG93IGFuZCB0aGUgYWN0dWFsIGxpbmsgd2luZG93IGNhbiBiZSBpbiB0aGF0IHJhbmdlIGluc3Rl
YWQgb2YgYSBmaXhlZCBvbmUgYXMgYmVmb3JlLi4uIHNvLCB1c2VyIHdpbGwgYmUgY29tcGxldGVs
eSBhd2FyZSBvZiB0aGlzLgo+IFRoZXJlIGlzIGhvd2V2ZXIgYSBjb25jZXJuIGZvciB0aGUgbWVk
aWEgJiBiZWFyZXIgbGF5ZXIncyB3aW5kb3cgc2V0dGluZyBjb21tYW5kcywgZG8gd2UgbmVlZCB0
byBhcHBseSB0aGUgc2FtZSBjaGFuZ2UocykgZm9yIHRoZW0gYXMgd2VsbCAoY3VycmVudCBpdCBz
ZXRzIGFuZCBnZXRzIHRoZSBtYXggd2luZG93IHZhbHVlLi4uKT8KV2Ugd291bGQgZGVmaW5pdGVs
eSBoYXZlIHRvIGNoYW5nZSBoZXJlIHRvby4KCkkgd291bGQgc3RpbGwgc3VnZ2VzdCB3ZSBnbyBm
b3IgbXkgc2Vjb25kIHByb3Bvc2FsIGFib3ZlLiBXZSBzZWxlY3QgYSAKZGVmYXVsdCB2YWx1ZSwg
ZS5nLiwgMTAwMCwgd2hlcmUgd2Ugc2VlIHRoYXQgdGhlcmUgaXMgbm8gaW1wcm92ZW1lbnQgaW4g
CmluY3JlYXNpbmcgaXQgZnVydGhlci4gVGhlbiB3ZSBsZXQgdGhlIHVzZXIgc2V0IGl0IGRpZmZl
cmVudGx5IGlmIGhlIAp3YW50cywgYW55IHZhbHVlIGJldHdlZW4gNTAgYW5kIDgxOTEuClRoaXMg
d291bGQgYmUgZWFzeSB0byBleHBsYWluIHRvIHRoZSB1c2VyOiAid2UgaGF2ZSBpbXByb3ZlZCB0
aGUgCnByb3RvY29sIHNvIHRoYXQgd2Ugbm93IGNhbiBzZXQgdGhlIGRlZmF1bHQgd2luZG93IG11
Y2ggbGFyZ2VyIHRoYW4gCmJlZm9yZSIuIEhvdyBjYW4gaGUgb2JqZWN0IHRvIHRoYXQsIGVzcGVj
aWFsbHkgaWYgaGUgc2VlcyB3aGF0IGNhbiBiZSAKcGVyY2VpdmVkIGFzIGEgc2FuZSB2YWx1ZSAo
MTAwMCBpbnN0ZWFkIG9mIDgxOTEpID8gVGhlIHVzZXJzIHNob3VsZCAKKm5vdCogYmUgYWxsb3dl
ZCB0byBkaWN0YXRlIG91ciBpbnRlcm5hbCBkZWZhdWx0IHNldHRpbmdzIGp1c3QgYmVjYXVzZSAK
dGhleSBhcmUgdW53aWxsaW5nIHRvIGNoYW5nZSB0aGVpciBvd24uIEFzIGxvbmcgYXMgd2UgZG9u
J3QgYnJlYWsgCmFueXRoaW5nIG9yIHJlZHVjZSB0aGVpciBjdXJyZW50IHBlcmZvcm1hbmNlIHdl
IHJlbWFpbiBiYWNrd2FyZHMgCmNvbXBhdGlibGUsIGluIG15IHZpZXcuCgpGaW5hbGx5LCBJIGFw
b2xvZ2l6ZSBmb3Igbm90IGF0dGVuZGluZyB0aGUgbWVldGluZyB0aGlzIG1vcm5pbmcuIEl0IGlz
IAphdCA2IEFNIGZvciBtZSwgYW5kIGVhc3kgdG8gbWlzcyBzaW5jZSBpdCBpcyBiaS13ZWVrbHku
IEkgd2lsbCBzZWUgaWYgSSAKY2FuIHNldCB1cCBCbHVlamVucyBzbyB0aGF0IGEgbW9kZXJhdG9y
IGlzIG5vdCBuZWVkZWQsIG9yIGlmIHdlIGNhbiB1c2UgCnNvbWUgb3RoZXIgdG9vbC4gQW55IHN1
Z2dlc3Rpb25zPwoKLy8vam9uCgoKPiBXaGF0IGRvIHlvdSB0aGluaz8KPgo+Pj4gLy8vam9uCj4+
Pgo+Pj4KPj4+Cj4+Pj4gQlIvVHVvbmcKPj4+Pj4gLy8vam9uCj4+Pj4+Cj4+Pj4+PiBGaXhlczog
MTZhZDNmNDAyMmJiICgidGlwYzogaW50cm9kdWNlIHZhcmlhYmxlIHdpbmRvdyBjb25nZXN0aW9u
Cj4+Pj4+PiBjb250cm9sIikKPj4+Pj4+IFJlcG9ydGVkLWJ5OiBIb2FuZyBMZSA8aG9hbmcuaC5s
ZUBkZWt0ZWNoLmNvbS5hdT4KPj4+Pj4+IFJlcG9ydGVkLWJ5OiBUaGFuZyBOZ28gPHRoYW5nLmgu
bmdvQGRla3RlY2guY29tLmF1Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVHVvbmcgTGllbiA8dHVv
bmcudC5saWVuQGRla3RlY2guY29tLmF1Pgo+Pj4+Pj4gLS0tCj4+Pj4+PiAgwqDCoCBuZXQvdGlw
Yy9ldGhfbWVkaWEuYyB8IDIgKy0KPj4+Pj4+ICDCoMKgIG5ldC90aXBjL2xpbmsuY8KgwqDCoMKg
wqAgfCAyICstCj4+Pj4+PiAgwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvZXRoX21l
ZGlhLmMgYi9uZXQvdGlwYy9ldGhfbWVkaWEuYwo+Pj4+Pj4gaW5kZXggOGIwYmI2MDA2MDJkLi42
NzViOTQ3ZWFiODkgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9uZXQvdGlwYy9ldGhfbWVkaWEuYwo+Pj4+
Pj4gKysrIGIvbmV0L3RpcGMvZXRoX21lZGlhLmMKPj4+Pj4+IEBAIC05Myw3ICs5Myw3IEBAIHN0
cnVjdCB0aXBjX21lZGlhIGV0aF9tZWRpYV9pbmZvID0gewo+Pj4+Pj4gIMKgwqDCoMKgwqDCoCAu
cHJpb3JpdHnCoMKgwqAgPSBUSVBDX0RFRl9MSU5LX1BSSSwKPj4+Pj4+ICDCoMKgwqDCoMKgwqAg
LnRvbGVyYW5jZcKgwqDCoCA9IFRJUENfREVGX0xJTktfVE9MLAo+Pj4+Pj4gIMKgwqDCoMKgwqDC
oCAubWluX3dpbsKgwqDCoCA9IFRJUENfREVGX0xJTktfV0lOLAo+Pj4+Pj4gLcKgwqDCoCAubWF4
X3dpbsKgwqDCoCA9IFRJUENfTUFYX0xJTktfV0lOLAo+Pj4+Pj4gK8KgwqDCoCAubWF4X3dpbsKg
wqDCoCA9IFRJUENfREVGX0xJTktfV0lOLAo+Pj4+Pj4gIMKgwqDCoMKgwqDCoCAudHlwZV9pZMKg
wqDCoCA9IFRJUENfTUVESUFfVFlQRV9FVEgsCj4+Pj4+PiAgwqDCoMKgwqDCoMKgIC5od2FkZHJf
bGVuwqDCoMKgID0gRVRIX0FMRU4sCj4+Pj4+PiAgwqDCoMKgwqDCoMKgIC5uYW1lwqDCoMKgwqDC
oMKgwqAgPSAiZXRoIgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL25ldC90aXBjL2xpbmsuYyBiL25ldC90
aXBjL2xpbmsuYwo+Pj4+Pj4gaW5kZXggZWUzYjhkMDU3NmI4Li4yODgzNGRhZmRjOTggMTAwNjQ0
Cj4+Pj4+PiAtLS0gYS9uZXQvdGlwYy9saW5rLmMKPj4+Pj4+ICsrKyBiL25ldC90aXBjL2xpbmsu
Ywo+Pj4+Pj4gQEAgLTI2NjIsNyArMjY2Miw3IEBAIGludCBfX3RpcGNfbmxfYWRkX2xpbmsoc3Ry
dWN0IG5ldCAqbmV0LAo+Pj4+Pj4gc3RydWN0IHRpcGNfbmxfbXNnICptc2csCj4+Pj4+PiAgwqDC
oMKgwqDCoMKgIGlmIChubGFfcHV0X3UzMihtc2ctPnNrYiwgVElQQ19OTEFfUFJPUF9UT0wsIGxp
bmstPnRvbGVyYW5jZSkpCj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBwcm9wX21z
Z19mdWxsOwo+Pj4+Pj4gIMKgwqDCoMKgwqDCoCBpZiAobmxhX3B1dF91MzIobXNnLT5za2IsIFRJ
UENfTkxBX1BST1BfV0lOLAo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGluay0+d2lu
ZG93KSkKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpbmstPm1heF93aW4pKQo+Pj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gcHJvcF9tc2dfZnVsbDsKPj4+Pj4+ICDCoMKg
wqDCoMKgwqAgaWYgKG5sYV9wdXRfdTMyKG1zZy0+c2tiLCBUSVBDX05MQV9QUk9QX1BSSU8sIGxp
bmstPnByaW9yaXR5KSkKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHByb3BfbXNn
X2Z1bGw7Cj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4+PiB0aXBjLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4+PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlz
dAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
