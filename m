Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE16F7F6F0
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Aug 2019 14:34:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1htWlA-0003rV-9K; Fri, 02 Aug 2019 12:34:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1htWl9-0003rO-2W
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Aug 2019 12:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7rM6fj8JQWj8dpZ7SY2E+6aONB3TR5EMBxyeibXxHe4=; b=KUxF/+h9QTC8IRXr2iJrfNCcmF
 QCaQFzKKv78MDrVsEtImBPq8NXuJK/SGjE3oAwHyjdn5Y2q5DzSrUK8gcpdlc522U1fnParAp2w4K
 W2bZYqIJrF8r/9MpHW83U7rKW11ey3PQvP1GEtVcUBY/ZwFhHTsco3TBTvLgxfACBngY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7rM6fj8JQWj8dpZ7SY2E+6aONB3TR5EMBxyeibXxHe4=; b=KpAJxtAFRCV1CoRKJVZfN2QBLH
 53hQnHe6dX/9QSYvu/M3598G49w5p9yMfqeLHTtOEBZabQ+EOa9dcErlYPkyAH28Obp6CEOzQMLCR
 YawRN6hBPX6BTQs9DJmkEeNCJxGN4bdH7ZRKy22N9lhe0tTwy47zYtkJAuGs0IbR+zY0=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1htWl5-0078yf-CF
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Aug 2019 12:34:11 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x72CWfhR001882
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 2 Aug 2019 05:32:51 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 2 Aug
 2019 05:32:30 -0700
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190719035635.11266-1-tuong.t.lien@dektech.com.au>
 <aaf21d04-1d2f-15c6-d110-9c970d27c984@windriver.com>
 <031901d54815$100d2e30$30278a90$@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <ff92a9b3-9a61-d44a-7ab8-94689e437dce@windriver.com>
Date: Fri, 2 Aug 2019 20:21:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <031901d54815$100d2e30$30278a90$@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1htWl5-0078yf-CF
Subject: Re: [tipc-discussion] [net] tipc: fix false detection of retransmit
 failures
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgVHVvbmcsCgpUaGFuayB5b3UgZm9yIHlvdXIgY2xlYXIgZXhwbGFuYXRpb24uCgpJIGFtIGZp
bmUgdG8gdGhpcyBwYXRjaC4gR29vZCB3b3JrIQoKUmVnYXJkcywKWWluZwoKCk9uIDgvMS8xOSAx
MDo1OCBBTSwgVHVvbmcgTGllbiBUb25nIHdyb3RlOgo+IEhpIFlpbmcsCj4gCj4gU2VlIGJlbG93
IG15IGFuc3dlcnMgaW5saW5lLgo+IAo+IEJSL1R1b25nCj4gCj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KPiBGcm9tOiBZaW5nIFh1ZSA8eWluZy54dWVAd2luZHJpdmVyLmNvbT4gCj4gU2Vu
dDogV2VkbmVzZGF5LCBKdWx5IDMxLCAyMDE5IDg6MjEgUE0KPiBUbzogVHVvbmcgTGllbiA8dHVv
bmcudC5saWVuQGRla3RlY2guY29tLmF1PjsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldDsgam9uLm1hbG95QGVyaWNzc29uLmNvbTsgbWFsb3lAZG9uam9ubi5jb20KPiBTdWJq
ZWN0OiBSZTogW25ldF0gdGlwYzogZml4IGZhbHNlIGRldGVjdGlvbiBvZiByZXRyYW5zbWl0IGZh
aWx1cmVzCj4gCj4gT24gNy8xOS8xOSAxMTo1NiBBTSwgVHVvbmcgTGllbiB3cm90ZToKPj4gVGhp
cyBjb21taXQgZWxpbWluYXRlcyB0aGUgdXNlIG9mIHRoZSBsaW5rICdzdGFsZV9saW1pdCcgJiAn
cHJldl9mcm9tJwo+PiAoYmVzaWRlcyB0aGUgYWxyZWFkeSByZW1vdmVkIC0gJ3N0YWxlX2NudCcp
IHZhcmlhYmxlcyBpbiB0aGUgZGV0ZWN0aW9uCj4+IG9mIHJlcGVhdGVkIHJldHJhbnNtaXQgZmFp
bHVyZXMgYXMgdGhlcmUgaXMgbm8gcHJvcGVyIHdheSB0byBpbml0aWFsaXplCj4+IHRoZW0gdG8g
YXZvaWQgYSBmYWxzZSBkZXRlY3Rpb24sIGkuZS4gaXQgaXMgbm90IHJlYWxseSBhIHJldHJhbnNt
aXNzaW9uCj4+IGZhaWx1cmUgYnV0IGR1ZSB0byBhIGdhcmJhZ2UgdmFsdWVzIGluIHRoZSB2YXJp
YWJsZXMuCj4gCj4gU29ycnksIEkgY291bGRuJ3QgdW5kZXJzdGFuZCB0aGUgcmVhc29uIHdoeSB3
ZSBoYXZlIG5vIHByb3BlciB3YXkgdG8KPiBpbml0aWFsaXplICdzdGFsZV9saW1pdCcgJiAncHJl
dl9mcm9tJyB2YXJpYWJsZXMgb2YgdGlwY19saW5rIHN0cnVjdC4KPiAKPiBBcyBmYXIgYXMgSSB1
bmRlcnN0YW5kLCB0aGUgdHdvIHZhcmlhYmxlcyBoYXZlIGJlZW4gc2V0IHRvIHplcm8gd2hlbgo+
IHRpcGNfbGluayBvYmplY3QgaXMgYWxsb2NhdGVkIHdpdGgga3phbGxvYygpIGluIHRpcGNfbGlu
a19jcmVhdGUoKS4KPiAKPiBDYW4geW91IHBsZWFzZSBoZWxwIG1lIHVuZGVyc3RhbmQgd2hhdCBy
ZWFsIHNjZW5hcmlvIHdlIGNhbm5vdCBwcm9wZXJseQo+IHNldCB0aGVtLgo+IAo+IFtUdW9uZ106
IFllcywgdGhlc2UgdHdvIHZhcmlhYmxlcyBoYXZlIGJlZW4gaW5pdGlhbGl6ZWQgdG8gemVybyBh
dCB0aGUgbGluayBjcmVhdGUgYnV0IHplcm8gb3IgYW55IG90aGVyIHZhbHVlIGlzIG5vdCAnc2Fm
ZScgZm9yIHRoZW0sIHRoZSByZXRyYW5zbWl0IGZhaWx1cmUgY3JpdGVyaWEgY2FuIGJlIG1ldCB3
aXRob3V0IGEgcmVhbCBmYWlsdXJlLiBTcGVjaWZpY2FsbHksIHRoZSAndGltZV9hZnRlcigpJyBj
YW4gcmV0dXJuICd0cnVlJyB1bmV4cGVjdGVkbHkgZHVlIHRvIGEgZ2FyYmFnZSB2YWx1ZSAobGlr
ZSB6ZXJvLi4uKSBvZiB0aGUgJ3N0YWxlX2xpbWl0JyB1bmxlc3MgaXQncyBpbnRlbnRpb25hbGx5
IHNldCBpbiB0aGUgMXN0IGNvbmRpdGlvbi4gSG93ZXZlciwgdGhlIDFzdCBjb25kaXRpb24gd2l0
aCB0aGUgJ3ByZXZfZnJvbScgaXMgbm90IGFsd2F5cyBzYXRpc2ZpZWQuIEluIGNhc2UgdGhlIG5l
eHQgJ2Zyb20nIGlzIGNvaW5jaWRlbnRhbGx5IGlkZW50aWNhbCB0byB0aGUgJ3ByZXZfZnJvbScs
IHdlIHdpbGwgbWlzcyBpdC4KPiAKPj4gLQlpZiAoci0+cHJldl9mcm9tICE9IGZyb20pIHsKPj4g
LQkJci0+cHJldl9mcm9tID0gZnJvbTsKPj4gLQkJci0+c3RhbGVfbGltaXQgPSBqaWZmaWVzICsg
bXNlY3NfdG9famlmZmllcyhyLT50b2xlcmFuY2UpOwo+PiAtCX0gZWxzZSBpZiAodGltZV9hZnRl
cihqaWZmaWVzLCByLT5zdGFsZV9saW1pdCkpIHsKPj4gLQkJcHJfd2FybigiUmV0cmFuc21pc3Np
b24gZmFpbHVyZSBvbiBsaW5rIDwlcz5cbiIsIGwtPm5hbWUpOwo+IAo+IEZvciBleGFtcGxlOgo+
IDEpIG4tdGggcmV0cmFuc21pdDogKHByZXZfZnJvbSA9IHgsIGZyb20gPSAxMDApCj4gPT0+IG9r
LCB3ZSBzZXQgdGhlIHZhcmlhYmxlczogcHJldl9mcm9tID0gMTAwLCBzdGFsZV9saW1pdCA9IGpp
ZmZpZXMgKyAxLjVzCj4gMikgbm93LCB0aGlzIHBrdCAjMTAwIHdhcyByZXRyYW5zbWl0dGVkIHN1
Y2Nlc3NmdWxseS4uLgo+IDMpIExhdGVyIG9uLCBuKzEtdGggcmV0cmFuc21pdDogKHByZXZfZnJv
bSA9IDEwMCwgZnJvbSA9IDEwMCkKPiAtPiBXZSBkb27igJl0IHNldCB0aGUgJ3N0YWxlX2xpbWl0
JyBidXQgZG8gdGhlIOKAnGVsc2UgaWbigJ0gYW5kIGJ1bXAhCj4gCj4gTm93LCB3ZSBjYW4gdHJ5
IHRvIHJlc2V0IG9yIHJlLWluaXRpYWxpemUgdGhlICdwcmV2X2Zyb20nIHNvbWVob3csIGUuZy4g
d2hlbiB0aGUgcGt0ICMxMDAgaXMgYWNrLWVkICYgcmVsZWFzZWQsIGJ1dCB3aGF0IHZhbHVlIHdp
bGwgYmUgZm9yIGl0PyBOb3RlLCBhbnkgdmFsdWUgaXMgYSB2YWxpZCBzZXF1ZW5jZSBudW1iZXIs
IGFuZCBpZiB0aGUgbmV4dCAnZnJvbScgZXF1YWxzIHRoYXQgdmFsdWUsIHdlIHdpbGwgZmFjZSB3
aXRoIHRoZSBzYW1lIHRyb3VibGUgYWdhaW4uCj4gVHJ5aW5nIHRvIHNldCB0aGUgJ3N0YWxlX2xp
bWl0JyB0byB2ZXJ5IGZhciBpbiB0aGUgZnV0dXJlIGlzIGlycmVsZXZhbnQgdG9vIGJlY2F1c2Ug
aXQgdHVybnMgb3V0IHRoYXQgd2Ugd2lsbCBkaXNhYmxlIHRoZSBmZWF0dXJlIGlmIHRoZSBzYW1l
ICdmcm9tJyBpcyByZWFsbHkgZmFjZWQgd2l0aCB0aGUgcmVwZWF0ZWQgcmV0cmFuc21pdCBmYWls
dXJlIQo+IAo+Pgo+PiBJbnN0ZWFkLCBhIGppZmZpZXMgdmFyaWFibGUgd2lsbCBiZSBhZGRlZCB0
byBpbmRpdmlkdWFsIHNrYnMgKGxpa2UgdGhlCj4+IHdheSB3ZSByZXN0cmljdCB0aGUgc2tiIHJl
dHJhbnNtaXNzaW9ucykgaW4gb3JkZXIgdG8gbWFyayB0aGUgZmlyc3Qgc2tiCj4+IHJldHJhbnNt
aXQgdGltZS4gTGF0ZXIgb24sIGF0IHRoZSBuZXh0IHJldHJhbnNtaXNzaW9ucywgdGhlIHRpbWVz
dGFtcAo+PiB3aWxsIGJlIGNoZWNrZWQgdG8gc2VlIGlmIHRoZSBza2IgaW4gdGhlIGxpbmsgdHJh
bnNtcSBpcyAidG9vIHN0YWxlIiwKPj4gdGhhdCBpcywgdGhlIGxpbmsgdG9sZXJhbmNlIHRpbWUg
aGFzIHBhc3NlZCwgc28gdGhhdCBhIGxpbmsgcmVzZXQgd2lsbAo+PiBiZSBvcmRlcmVkLiBOb3Rl
LCBqdXN0IGNoZWNraW5nIG9uIHRoZSBmaXJzdCBza2IgaW4gdGhlIHF1ZXVlIGlzIGZpbmUKPj4g
ZW5vdWdoIHNpbmNlIGl0IG11c3QgYmUgdGhlIG9sZGVzdCBvbmUuCj4+IEEgY291bnRlciBpcyBh
bHNvIGFkZGVkIHRvIGtlZXAgdHJhY2sgdGhlIGFjdHVhbCBza2IgcmV0cmFuc21pc3Npb25zJwo+
PiBudW1iZXIgZm9yIGxhdGVyIGNoZWNraW5nIHdoZW4gdGhlIGZhaWx1cmUgaGFwcGVucy4KPj4K
Pj4gVGhlIGRvd25zaWRlIG9mIHRoaXMgYXBwcm9hY2ggaXMgdGhhdCB0aGUgc2tiLT5jYltdIGJ1
ZmZlciBpcyBhYm91dCB0bwo+PiBiZSBleGhhdXN0ZWQsIGhvd2V2ZXIgaXQgaXMgYWx3YXlzIGFi
bGUgdG8gYWxsb2NhdGUgYW5vdGhlciBtZW1vcnkgYXJlYQo+PiBhbmQga2VlcCBhIHJlZmVyZW5j
ZSB0byBpdCB3aGVuIG5lZWRlZC4KPj4KPj4gRml4ZXM6IDc3Y2Y4ZWRiYzBlNyAoInRpcGM6IHNp
bXBsaWZ5IHN0YWxlIGxpbmsgZmFpbHVyZSBjcml0ZXJpYSIpCj4+IFJlcG9ydGVkLWJ5OiBIb2Fu
ZyBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT4KPj4gU2lnbmVkLW9mZi1ieTogVHVvbmcg
TGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1Pgo+PiAtLS0KPj4gIG5ldC90aXBjL2xp
bmsuYyB8IDkyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+PiAgbmV0L3RpcGMvbXNnLmggIHwgIDggKysrLS0KPj4gIDIgZmlsZXMgY2hh
bmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgNDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9uZXQvdGlwYy9saW5rLmMgYi9uZXQvdGlwYy9saW5rLmMKPj4gaW5kZXggNjZkM2EwN2JjNTcx
Li5jMmM1YzUzY2FkMjIgMTAwNjQ0Cj4+IC0tLSBhL25ldC90aXBjL2xpbmsuYwo+PiArKysgYi9u
ZXQvdGlwYy9saW5rLmMKPj4gQEAgLTEwNiw4ICsxMDYsNiBAQCBzdHJ1Y3QgdGlwY19zdGF0cyB7
Cj4+ICAgKiBAdHJhbnNtaXRxOiBxdWV1ZSBmb3Igc2VudCwgbm9uLWFja2VkIG1lc3NhZ2VzCj4+
ICAgKiBAYmFja2xvZ3E6IHF1ZXVlIGZvciBtZXNzYWdlcyB3YWl0aW5nIHRvIGJlIHNlbnQKPj4g
ICAqIEBzbnRfbnh0OiBuZXh0IHNlcXVlbmNlIG51bWJlciB0byB1c2UgZm9yIG91dGJvdW5kIG1l
c3NhZ2VzCj4+IC0gKiBAcHJldl9mcm9tOiBzZXF1ZW5jZSBudW1iZXIgb2YgbW9zdCBwcmV2aW91
cyByZXRyYW5zbWlzc2lvbiByZXF1ZXN0Cj4+IC0gKiBAc3RhbGVfbGltaXQ6IHRpbWUgd2hlbiBy
ZXBlYXRlZCBpZGVudGljYWwgcmV0cmFuc21pdHMgbXVzdCBmb3JjZSBsaW5rIHJlc2V0Cj4+ICAg
KiBAYWNrZXJzOiAjIG9mIHBlZXJzIHRoYXQgbmVlZHMgdG8gYWNrIGVhY2ggcGFja2V0IGJlZm9y
ZSBpdCBjYW4gYmUgcmVsZWFzZWQKPj4gICAqIEBhY2tlZDogIyBsYXN0IHBhY2tldCBhY2tlZCBi
eSBhIGNlcnRhaW4gcGVlci4gVXNlZCBmb3IgYnJvYWRjYXN0Lgo+PiAgICogQHJjdl9ueHQ6IG5l
eHQgc2VxdWVuY2UgbnVtYmVyIHRvIGV4cGVjdCBmb3IgaW5ib3VuZCBtZXNzYWdlcwo+PiBAQCAt
MTY0LDkgKzE2Miw3IEBAIHN0cnVjdCB0aXBjX2xpbmsgewo+PiAgCQl1MTYgbGltaXQ7Cj4+ICAJ
fSBiYWNrbG9nWzVdOwo+PiAgCXUxNiBzbmRfbnh0Owo+PiAtCXUxNiBwcmV2X2Zyb207Cj4+ICAJ
dTE2IHdpbmRvdzsKPj4gLQl1bnNpZ25lZCBsb25nIHN0YWxlX2xpbWl0Owo+PiAgCj4+ICAJLyog
UmVjZXB0aW9uICovCj4+ICAJdTE2IHJjdl9ueHQ7Cj4+IEBAIC0xMDQ0LDQ3ICsxMDQwLDUzIEBA
IHN0YXRpYyB2b2lkIHRpcGNfbGlua19hZHZhbmNlX2JhY2tsb2coc3RydWN0IHRpcGNfbGluayAq
bCwKPj4gICAqIGxpbmtfcmV0cmFuc21pdF9mYWlsdXJlKCkgLSBEZXRlY3QgcmVwZWF0ZWQgcmV0
cmFuc21pdCBmYWlsdXJlcwo+PiAgICogQGw6IHRpcGMgbGluayBzZW5kZXIKPj4gICAqIEByOiB0
aXBjIGxpbmsgcmVjZWl2ZXIgKD0gbCBpbiBjYXNlIG9mIHVuaWNhc3QpCj4+IC0gKiBAZnJvbTog
c2Vxbm8gb2YgdGhlIDFzdCBwYWNrZXQgaW4gcmV0cmFuc21pdCByZXF1ZXN0Cj4+ICAgKiBAcmM6
IHJldHVybmVkIGNvZGUKPj4gICAqCj4+ICAgKiBSZXR1cm46IHRydWUgaWYgdGhlIHJlcGVhdGVk
IHJldHJhbnNtaXQgZmFpbHVyZXMgaGFwcGVucywgb3RoZXJ3aXNlCj4+ICAgKiBmYWxzZQo+PiAg
ICovCj4+ICBzdGF0aWMgYm9vbCBsaW5rX3JldHJhbnNtaXRfZmFpbHVyZShzdHJ1Y3QgdGlwY19s
aW5rICpsLCBzdHJ1Y3QgdGlwY19saW5rICpyLAo+PiAtCQkJCSAgICB1MTYgZnJvbSwgaW50ICpy
YykKPj4gKwkJCQkgICAgaW50ICpyYykKPj4gIHsKPj4gIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiID0g
c2tiX3BlZWsoJmwtPnRyYW5zbXEpOwo+PiAgCXN0cnVjdCB0aXBjX21zZyAqaGRyOwo+PiAgCj4+
ICAJaWYgKCFza2IpCj4+ICAJCXJldHVybiBmYWxzZTsKPj4gLQloZHIgPSBidWZfbXNnKHNrYik7
Cj4+ICAKPj4gLQkvKiBEZXRlY3QgcmVwZWF0ZWQgcmV0cmFuc21pdCBmYWlsdXJlcyBvbiBzYW1l
IHBhY2tldCAqLwo+PiAtCWlmIChyLT5wcmV2X2Zyb20gIT0gZnJvbSkgewo+PiAtCQlyLT5wcmV2
X2Zyb20gPSBmcm9tOwo+PiAtCQlyLT5zdGFsZV9saW1pdCA9IGppZmZpZXMgKyBtc2Vjc190b19q
aWZmaWVzKHItPnRvbGVyYW5jZSk7Cj4+IC0JfSBlbHNlIGlmICh0aW1lX2FmdGVyKGppZmZpZXMs
IHItPnN0YWxlX2xpbWl0KSkgewo+PiAtCQlwcl93YXJuKCJSZXRyYW5zbWlzc2lvbiBmYWlsdXJl
IG9uIGxpbmsgPCVzPlxuIiwgbC0+bmFtZSk7Cj4+IC0JCWxpbmtfcHJpbnQobCwgIlN0YXRlIG9m
IGxpbmsgIik7Cj4+IC0JCXByX2luZm8oIkZhaWxlZCBtc2c6IHVzciAldSwgdHlwICV1LCBsZW4g
JXUsIGVyciAldVxuIiwKPj4gLQkJCW1zZ191c2VyKGhkciksIG1zZ190eXBlKGhkciksIG1zZ19z
aXplKGhkciksCj4+IC0JCQltc2dfZXJyY29kZShoZHIpKTsKPj4gLQkJcHJfaW5mbygic3FubyAl
dSwgcHJldjogJXgsIHNyYzogJXhcbiIsCj4+IC0JCQltc2dfc2Vxbm8oaGRyKSwgbXNnX3ByZXZu
b2RlKGhkciksIG1zZ19vcmlnbm9kZShoZHIpKTsKPj4gLQo+PiAtCQl0cmFjZV90aXBjX2xpc3Rf
ZHVtcCgmbC0+dHJhbnNtcSwgdHJ1ZSwgInJldHJhbnMgZmFpbHVyZSEiKTsKPj4gLQkJdHJhY2Vf
dGlwY19saW5rX2R1bXAobCwgVElQQ19EVU1QX05PTkUsICJyZXRyYW5zIGZhaWx1cmUhIik7Cj4+
IC0JCXRyYWNlX3RpcGNfbGlua19kdW1wKHIsIFRJUENfRFVNUF9OT05FLCAicmV0cmFucyBmYWls
dXJlISIpOwo+PiArCWlmICghVElQQ19TS0JfQ0Ioc2tiKS0+cmV0cl9jbnQpCj4+ICsJCXJldHVy
biBmYWxzZTsKPj4gIAo+PiAtCQlpZiAobGlua19pc19iY19zbmRsaW5rKGwpKQo+PiAtCQkJKnJj
ID0gVElQQ19MSU5LX0RPV05fRVZUOwo+PiArCWlmICghdGltZV9hZnRlcihqaWZmaWVzLCBUSVBD
X1NLQl9DQihza2IpLT5yZXRyX3N0YW1wICsKPj4gKwkJCW1zZWNzX3RvX2ppZmZpZXMoci0+dG9s
ZXJhbmNlKSkpCj4+ICsJCXJldHVybiBmYWxzZTsKPj4gKwo+PiArCWhkciA9IGJ1Zl9tc2coc2ti
KTsKPj4gKwlpZiAobGlua19pc19iY19zbmRsaW5rKGwpICYmICFsZXNzKHItPmFja2VkLCBtc2df
c2Vxbm8oaGRyKSkpCj4+ICsJCXJldHVybiBmYWxzZTsKPj4gIAo+PiArCXByX3dhcm4oIlJldHJh
bnNtaXNzaW9uIGZhaWx1cmUgb24gbGluayA8JXM+XG4iLCBsLT5uYW1lKTsKPj4gKwlsaW5rX3By
aW50KGwsICJTdGF0ZSBvZiBsaW5rICIpOwo+PiArCXByX2luZm8oIkZhaWxlZCBtc2c6IHVzciAl
dSwgdHlwICV1LCBsZW4gJXUsIGVyciAldVxuIiwKPj4gKwkJbXNnX3VzZXIoaGRyKSwgbXNnX3R5
cGUoaGRyKSwgbXNnX3NpemUoaGRyKSwgbXNnX2VycmNvZGUoaGRyKSk7Cj4+ICsJcHJfaW5mbygi
c3FubyAldSwgcHJldjogJXgsIGRlc3Q6ICV4XG4iLAo+PiArCQltc2dfc2Vxbm8oaGRyKSwgbXNn
X3ByZXZub2RlKGhkciksIG1zZ19kZXN0bm9kZShoZHIpKTsKPj4gKwlwcl9pbmZvKCJyZXRyX3N0
YW1wICVkLCByZXRyX2NudCAlZFxuIiwKPj4gKwkJamlmZmllc190b19tc2VjcyhUSVBDX1NLQl9D
Qihza2IpLT5yZXRyX3N0YW1wKSwKPj4gKwkJVElQQ19TS0JfQ0Ioc2tiKS0+cmV0cl9jbnQpOwo+
PiArCj4+ICsJdHJhY2VfdGlwY19saXN0X2R1bXAoJmwtPnRyYW5zbXEsIHRydWUsICJyZXRyYW5z
IGZhaWx1cmUhIik7Cj4+ICsJdHJhY2VfdGlwY19saW5rX2R1bXAobCwgVElQQ19EVU1QX05PTkUs
ICJyZXRyYW5zIGZhaWx1cmUhIik7Cj4+ICsJdHJhY2VfdGlwY19saW5rX2R1bXAociwgVElQQ19E
VU1QX05PTkUsICJyZXRyYW5zIGZhaWx1cmUhIik7Cj4+ICsKPj4gKwlpZiAobGlua19pc19iY19z
bmRsaW5rKGwpKSB7Cj4+ICsJCXItPnN0YXRlID0gTElOS19SRVNFVDsKPj4gKwkJKnJjID0gVElQ
Q19MSU5LX0RPV05fRVZUOwo+PiArCX0gZWxzZSB7Cj4+ICAJCSpyYyA9IHRpcGNfbGlua19mc21f
ZXZ0KGwsIExJTktfRkFJTFVSRV9FVlQpOwo+PiAtCQlyZXR1cm4gdHJ1ZTsKPj4gIAl9Cj4+ICAK
Pj4gLQlyZXR1cm4gZmFsc2U7Cj4+ICsJcmV0dXJuIHRydWU7Cj4+ICB9Cj4+ICAKPj4gIC8qIHRp
cGNfbGlua19iY19yZXRyYW5zKCkgLSByZXRyYW5zbWl0IHplcm8gb3IgbW9yZSBwYWNrZXRzCj4+
IEBAIC0xMTEwLDcgKzExMTIsNyBAQCBzdGF0aWMgaW50IHRpcGNfbGlua19iY19yZXRyYW5zKHN0
cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCB0aXBjX2xpbmsgKnIsCj4+ICAKPj4gIAl0cmFjZV90
aXBjX2xpbmtfcmV0cmFucyhyLCBmcm9tLCB0bywgJmwtPnRyYW5zbXEpOwo+PiAgCj4+IC0JaWYg
KGxpbmtfcmV0cmFuc21pdF9mYWlsdXJlKGwsIHIsIGZyb20sICZyYykpCj4+ICsJaWYgKGxpbmtf
cmV0cmFuc21pdF9mYWlsdXJlKGwsIHIsICZyYykpCj4+ICAJCXJldHVybiByYzsKPj4gIAo+PiAg
CXNrYl9xdWV1ZV93YWxrKCZsLT50cmFuc21xLCBza2IpIHsKPj4gQEAgLTExMTksMTEgKzExMjEs
MTAgQEAgc3RhdGljIGludCB0aXBjX2xpbmtfYmNfcmV0cmFucyhzdHJ1Y3QgdGlwY19saW5rICps
LCBzdHJ1Y3QgdGlwY19saW5rICpyLAo+PiAgCQkJY29udGludWU7Cj4+ICAJCWlmIChtb3JlKG1z
Z19zZXFubyhoZHIpLCB0bykpCj4+ICAJCQlicmVhazsKPj4gLQkJaWYgKGxpbmtfaXNfYmNfc25k
bGluayhsKSkgewo+PiAtCQkJaWYgKHRpbWVfYmVmb3JlKGppZmZpZXMsIFRJUENfU0tCX0NCKHNr
YiktPm54dF9yZXRyKSkKPj4gLQkJCQljb250aW51ZTsKPj4gLQkJCVRJUENfU0tCX0NCKHNrYikt
Pm54dF9yZXRyID0gVElQQ19CQ19SRVRSX0xJTTsKPj4gLQkJfQo+PiArCj4+ICsJCWlmICh0aW1l
X2JlZm9yZShqaWZmaWVzLCBUSVBDX1NLQl9DQihza2IpLT5ueHRfcmV0cikpCj4+ICsJCQljb250
aW51ZTsKPj4gKwkJVElQQ19TS0JfQ0Ioc2tiKS0+bnh0X3JldHIgPSBUSVBDX0JDX1JFVFJfTElN
Owo+PiAgCQlfc2tiID0gX19wc2tiX2NvcHkoc2tiLCBMTF9NQVhfSEVBREVSICsgTUlOX0hfU0la
RSwgR0ZQX0FUT01JQyk7Cj4+ICAJCWlmICghX3NrYikKPj4gIAkJCXJldHVybiAwOwo+PiBAQCAt
MTEzMyw2ICsxMTM0LDEwIEBAIHN0YXRpYyBpbnQgdGlwY19saW5rX2JjX3JldHJhbnMoc3RydWN0
IHRpcGNfbGluayAqbCwgc3RydWN0IHRpcGNfbGluayAqciwKPj4gIAkJX3NrYi0+cHJpb3JpdHkg
PSBUQ19QUklPX0NPTlRST0w7Cj4+ICAJCV9fc2tiX3F1ZXVlX3RhaWwoeG1pdHEsIF9za2IpOwo+
PiAgCQlsLT5zdGF0cy5yZXRyYW5zbWl0dGVkKys7Cj4+ICsKPj4gKwkJLyogSW5jcmVhc2UgYWN0
dWFsIHJldHJhbnMgY291bnRlciAmIG1hcmsgZmlyc3QgdGltZSAqLwo+PiArCQlpZiAoIVRJUENf
U0tCX0NCKHNrYiktPnJldHJfY250KyspCj4+ICsJCQlUSVBDX1NLQl9DQihza2IpLT5yZXRyX3N0
YW1wID0gamlmZmllczsKPj4gIAl9Cj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+IEBAIC0xMzU3LDEy
ICsxMzYyLDEwIEBAIHN0YXRpYyBpbnQgdGlwY19saW5rX2FkdmFuY2VfdHJhbnNtcShzdHJ1Y3Qg
dGlwY19saW5rICpsLCB1MTYgYWNrZWQsIHUxNiBnYXAsCj4+ICAJc3RydWN0IHRpcGNfbXNnICpo
ZHI7Cj4+ICAJdTE2IGJjX2FjayA9IGwtPmJjX3JjdmxpbmstPnJjdl9ueHQgLSAxOwo+PiAgCXUx
NiBhY2sgPSBsLT5yY3Zfbnh0IC0gMTsKPj4gKwlib29sIHBhc3NlZCA9IGZhbHNlOwo+PiAgCXUx
NiBzZXFubywgbiA9IDA7Cj4+ICAJaW50IHJjID0gMDsKPj4gIAo+PiAtCWlmIChnYXAgJiYgbGlu
a19yZXRyYW5zbWl0X2ZhaWx1cmUobCwgbCwgYWNrZWQgKyAxLCAmcmMpKQo+PiAtCQlyZXR1cm4g
cmM7Cj4+IC0KPiAKPiBJIGFtIGFsc28gdW5hYmxlIHRvIHVuZGVyc3RhbmQgd2h5IHdlIHdvdWxk
IGxpa2UgdG8gbW92ZQo+IGxpbmtfcmV0cmFuc21pdF9mYWlsdXJlKCkgdG8gaW50ZXJuYWwgbG9v
cCBvZiBza2JfcXVldWVfd2Fsa19zYWZlKCkgYnkKPiBhZGRpbmcgYWRkaXRpb25hbCAicGFzc2Vk
IiBjaGVja2luZy4KPiAKPiBbVHVvbmddOiBTaW5jZSB0aGUgZnVuY3Rpb24gZG9lcyBub3Qgb25s
eSBwYWNrZXQgcmV0cmFuc21pc3Npb25zIGJ1dCBhbHNvIHJlbGVhc2VzLCBieSBtb3ZpbmcgdGhl
IGZhaWx1cmUgY2hlY2sgaW50byB0aGUgbG9vcCBhdCB0aGUgMXN0IHJldHJhbnNtaXNzaW9uIChp
ZiBhbnkpIHdpbGwgYWxsb3cgc29tZSBwYWNrZXRzIGF0IHRoZSB0cmFuc21xIGhlYWQgY2FuIGJl
IHJlbGVhc2VkIGZpcnN0LCBiZWZvcmUgaXQgd291bGQgYmUgY2xhaW1lZCB0byBiZSAndG9vIHN0
YWxlJy4gVGhpcyBpcyB0aGUgbGFzdCBjaGFuY2UgZm9yIGl0IQo+IEFsc28sIHNpbmNlIHRoZSAx
c3Qgc2tiIGluIHRoZSBxdWV1ZSBtdXN0IGJlIHRoZSBvbGRlc3QsIHdlIG9ubHkgbmVlZCB0byBj
aGVjayBvbmNlLCB0aGF0J3MgZW5vdWdoLgo+IAo+IFRoYW5rcywKPiBZaW5nCj4gCj4+ICAJc2ti
X3F1ZXVlX3dhbGtfc2FmZSgmbC0+dHJhbnNtcSwgc2tiLCB0bXApIHsKPj4gIAkJc2Vxbm8gPSBi
dWZfc2Vxbm8oc2tiKTsKPj4gIAo+PiBAQCAtMTM3MiwxMiArMTM3NSwxNyBAQCBzdGF0aWMgaW50
IHRpcGNfbGlua19hZHZhbmNlX3RyYW5zbXEoc3RydWN0IHRpcGNfbGluayAqbCwgdTE2IGFja2Vk
LCB1MTYgZ2FwLAo+PiAgCQkJX19za2JfdW5saW5rKHNrYiwgJmwtPnRyYW5zbXEpOwo+PiAgCQkJ
a2ZyZWVfc2tiKHNrYik7Cj4+ICAJCX0gZWxzZSBpZiAobGVzc19lcShzZXFubywgYWNrZWQgKyBn
YXApKSB7Cj4+IC0JCQkvKiByZXRyYW5zbWl0IHNrYiAqLwo+PiArCQkJLyogRmlyc3QsIGNoZWNr
IGlmIHJlcGVhdGVkIHJldHJhbnMgZmFpbHVyZXMgb2NjdXJzPyAqLwo+PiArCQkJaWYgKCFwYXNz
ZWQgJiYgbGlua19yZXRyYW5zbWl0X2ZhaWx1cmUobCwgbCwgJnJjKSkKPj4gKwkJCQlyZXR1cm4g
cmM7Cj4+ICsJCQlwYXNzZWQgPSB0cnVlOwo+PiArCj4+ICsJCQkvKiByZXRyYW5zbWl0IHNrYiBp
ZiB1bnJlc3RyaWN0ZWQqLwo+PiAgCQkJaWYgKHRpbWVfYmVmb3JlKGppZmZpZXMsIFRJUENfU0tC
X0NCKHNrYiktPm54dF9yZXRyKSkKPj4gIAkJCQljb250aW51ZTsKPj4gIAkJCVRJUENfU0tCX0NC
KHNrYiktPm54dF9yZXRyID0gVElQQ19VQ19SRVRSX1RJTUU7Cj4+IC0KPj4gLQkJCV9za2IgPSBf
X3Bza2JfY29weShza2IsIE1JTl9IX1NJWkUsIEdGUF9BVE9NSUMpOwo+PiArCQkJX3NrYiA9IF9f
cHNrYl9jb3B5KHNrYiwgTExfTUFYX0hFQURFUiArIE1JTl9IX1NJWkUsCj4+ICsJCQkJCSAgIEdG
UF9BVE9NSUMpOwo+PiAgCQkJaWYgKCFfc2tiKQo+PiAgCQkJCWNvbnRpbnVlOwo+PiAgCQkJaGRy
ID0gYnVmX21zZyhfc2tiKTsKPj4gQEAgLTEzODYsNiArMTM5NCwxMCBAQCBzdGF0aWMgaW50IHRp
cGNfbGlua19hZHZhbmNlX3RyYW5zbXEoc3RydWN0IHRpcGNfbGluayAqbCwgdTE2IGFja2VkLCB1
MTYgZ2FwLAo+PiAgCQkJX3NrYi0+cHJpb3JpdHkgPSBUQ19QUklPX0NPTlRST0w7Cj4+ICAJCQlf
X3NrYl9xdWV1ZV90YWlsKHhtaXRxLCBfc2tiKTsKPj4gIAkJCWwtPnN0YXRzLnJldHJhbnNtaXR0
ZWQrKzsKPj4gKwo+PiArCQkJLyogSW5jcmVhc2UgYWN0dWFsIHJldHJhbnMgY291bnRlciAmIG1h
cmsgZmlyc3QgdGltZSAqLwo+PiArCQkJaWYgKCFUSVBDX1NLQl9DQihza2IpLT5yZXRyX2NudCsr
KQo+PiArCQkJCVRJUENfU0tCX0NCKHNrYiktPnJldHJfc3RhbXAgPSBqaWZmaWVzOwo+PiAgCQl9
IGVsc2Ugewo+PiAgCQkJLyogcmV0cnkgd2l0aCBHYXAgQUNLIGJsb2NrcyBpZiBhbnkgKi8KPj4g
IAkJCWlmICghZ2EgfHwgbiA+PSBnYS0+Z2Fja19jbnQpCj4+IEBAIC0yNTc3LDcgKzI1ODksNyBA
QCBpbnQgdGlwY19saW5rX2R1bXAoc3RydWN0IHRpcGNfbGluayAqbCwgdTE2IGRxdWV1ZXMsIGNo
YXIgKmJ1ZikKPj4gIAlpICs9IHNjbnByaW50ZihidWYgKyBpLCBzeiAtIGksICIgJXgiLCBsLT5w
ZWVyX2NhcHMpOwo+PiAgCWkgKz0gc2NucHJpbnRmKGJ1ZiArIGksIHN6IC0gaSwgIiAldSIsIGwt
PnNpbGVudF9pbnR2X2NudCk7Cj4+ICAJaSArPSBzY25wcmludGYoYnVmICsgaSwgc3ogLSBpLCAi
ICV1IiwgbC0+cnN0X2NudCk7Cj4+IC0JaSArPSBzY25wcmludGYoYnVmICsgaSwgc3ogLSBpLCAi
ICV1IiwgbC0+cHJldl9mcm9tKTsKPj4gKwlpICs9IHNjbnByaW50ZihidWYgKyBpLCBzeiAtIGks
ICIgJXUiLCAwKTsKPj4gIAlpICs9IHNjbnByaW50ZihidWYgKyBpLCBzeiAtIGksICIgJXUiLCAw
KTsKPj4gIAlpICs9IHNjbnByaW50ZihidWYgKyBpLCBzeiAtIGksICIgJXUiLCBsLT5hY2tlZCk7
Cj4+ICAKPj4gZGlmZiAtLWdpdCBhL25ldC90aXBjL21zZy5oIGIvbmV0L3RpcGMvbXNnLmgKPj4g
aW5kZXggZGE1MDlmMGViOWNhLi5kN2ViYzllOTU1ZjYgMTAwNjQ0Cj4+IC0tLSBhL25ldC90aXBj
L21zZy5oCj4+ICsrKyBiL25ldC90aXBjL21zZy5oCj4+IEBAIC0xMDIsMTMgKzEwMiwxNSBAQCBz
dHJ1Y3QgcGxpc3Q7Cj4+ICAjZGVmaW5lIFRJUENfTUVESUFfSU5GT19PRkZTRVQJNQo+PiAgCj4+
ICBzdHJ1Y3QgdGlwY19za2JfY2Igewo+PiAtCXUzMiBieXRlc19yZWFkOwo+PiAtCXUzMiBvcmln
X21lbWJlcjsKPj4gIAlzdHJ1Y3Qgc2tfYnVmZiAqdGFpbDsKPj4gIAl1bnNpZ25lZCBsb25nIG54
dF9yZXRyOwo+PiAtCWJvb2wgdmFsaWRhdGVkOwo+PiArCXVuc2lnbmVkIGxvbmcgcmV0cl9zdGFt
cDsKPj4gKwl1MzIgYnl0ZXNfcmVhZDsKPj4gKwl1MzIgb3JpZ19tZW1iZXI7Cj4+ICAJdTE2IGNo
YWluX2ltcDsKPj4gIAl1MTYgYWNrZXJzOwo+PiArCXUxNiByZXRyX2NudDsKPj4gKwlib29sIHZh
bGlkYXRlZDsKPj4gIH07Cj4+ICAKPj4gICNkZWZpbmUgVElQQ19TS0JfQ0IoX19za2IpICgoc3Ry
dWN0IHRpcGNfc2tiX2NiICopJigoX19za2IpLT5jYlswXSkpCj4+Cj4gCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
