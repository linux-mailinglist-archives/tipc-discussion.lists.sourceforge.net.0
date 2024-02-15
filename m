Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF7856696
	for <lists+tipc-discussion@lfdr.de>; Thu, 15 Feb 2024 15:53:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1rad6s-00088v-H8;
	Thu, 15 Feb 2024 14:53:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1rad6q-00088n-9Q
 for tipc-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 14:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E/MqVesyahAAM2JD+ixUFlwK93nIntpIupHr6/TOzuc=; b=cswYR83OHW915DaAA8BkiNA1zj
 2qNjU4ui08bRk0FsV9EAsOenXf22W8WlmZm/0WlBEcZ0UxI22FHRNngDbhFDZQvZIQNiTfaW29Vkp
 5Opko+kt/2K6bp4PihFweYsGHSrLGfJiQejpH5pLOrZl92meBy48CqpkV8BXnmwyqCIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E/MqVesyahAAM2JD+ixUFlwK93nIntpIupHr6/TOzuc=; b=R
 I/DYMbPyiDcGXOJtfNd5iNnRjCHQxvEDNCKe1bYwEAn0VOyJDpB6QnCrujQEftfkqPtAXXWuUZBaE
 mOoySnyY/EqHq5l5TdmJh2T3nKolWN6pniDomH80Ehnw/+8MyCHNBi8gjrLgjI16iBlS91n6O+Z7d
 pNM+GNPmRs6GCfWU=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rad6n-0006RQ-W9 for tipc-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 14:53:08 +0000
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-55ad2a47b7aso1355005a12.3
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 15 Feb 2024 06:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708008775; x=1708613575; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=E/MqVesyahAAM2JD+ixUFlwK93nIntpIupHr6/TOzuc=;
 b=g7Nn5HD3TRZgHtnsw97XLs3M2+U64DPQjfmnLR63c1RZYrWEP4SaLkJwN/on6fUbaC
 G3vTUaNorBflMIa0XhUWxSyHYJwah8AhxdJh/mUMtU/EOTK3ZiyNWLhvvFonluB0R9xi
 5heVMbqyint5h0jbvl1uqTFkZu95YSoxE7LwswaS1Q/M7ElPRQVt4FyTTjypQ2mosZB3
 rDLEHKeNx/IrId7MtqhpsTj9ofmIgiX4zn7U7po3IqNI0ltnGm7bLqjDURr5Ksdr7adg
 Ls45ghuPXwJP3lcRK4FOcVMH+hryIW8NhIc9fARbxSF8cy8EwYFFnUyvhG8R/vCZMvp3
 /Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708008775; x=1708613575;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=E/MqVesyahAAM2JD+ixUFlwK93nIntpIupHr6/TOzuc=;
 b=K6FsCQre78pQsrCHCudswuqMAlr7c8hYdYk4i6dbCp1SxVMTPegq5VS9JD6/PG2R8v
 8hj+YYbY2cLE6j7q/OVeXtKgCsdHRoeiGfYMnI1UFH3JBsu4dhE1yOLnVWrJGJuB25h2
 lZoqhlC1t1AIWP7apLq28ATH/JjBTDcd/ByDuDBTUeFj7uCFIsQXUIo5t6hbCgo3hlpR
 BRjVU8ngcuWiYzsJPJ6T7RnQ5sDq1mUTRNt4YThUqy8G5vh8JhStIchp3ect0O6oU61Q
 /HtbpRngfANzXqVzN+cG5oetVY37vcktWCj3s12Zzk6PTLlGZRMPLUakt8hOUPnhUk+s
 r6/Q==
X-Gm-Message-State: AOJu0Yw3rC0GxO7OZ/wq8Ca5y8r7ojtn45GXuT8M3NexrbYjDX2OVeuk
 CdGakNpQlTkgNl7ci8XAoxnxx9ccLf37CPEZAVFq1w73uMFcTsb5xKODegv/7smt4/Sd7k4qDm+
 Urj30POFT7vPCmEvSlhIRiCTKJAzhDVj06QY=
X-Google-Smtp-Source: AGHT+IFqW5yv4e79sWK4HBkNYggFaH6WYdnxi03/7SBjTCWG5Q3TzDfPj47Vf2LsVsTHLnv/uv0XrjieNnnj+wYx8JA=
X-Received: by 2002:a17:906:1c12:b0:a3d:678e:6cef with SMTP id
 k18-20020a1709061c1200b00a3d678e6cefmr1426817ejg.27.1708008774625; Thu, 15
 Feb 2024 06:52:54 -0800 (PST)
MIME-Version: 1.0
From: prakash bisht <ps13.bisht@gmail.com>
Date: Thu, 15 Feb 2024 20:22:43 +0530
Message-ID: <CACB1WsTUt2zgubKHtrFpu9ak3D4ukN6nhxGcQAMfFO+6bn1Z-w@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi John/Xin,Tung, We are facing an issue while closing the
 TIPC server socket. We are running multiple applications which are in turn
 creating TIPC sockets. As part of the shutdown, we are terminating all the
 processes using SIGKILL. We are expecting the tipc sockets to be closed
 automatically by the kernel after some time. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rad6n-0006RQ-W9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC socket alive even when the process is killed
 ( using SIGKILL)
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

SGkgIEpvaG4vWGluLFR1bmcsCgoKCldlIGFyZSBmYWNpbmcgYW4gaXNzdWUgd2hpbGUgY2xvc2lu
ZyB0aGUgVElQQyBzZXJ2ZXIgc29ja2V0LiBXZSBhcmUgcnVubmluZwptdWx0aXBsZSBhcHBsaWNh
dGlvbnMgd2hpY2ggYXJlIGluIHR1cm4gY3JlYXRpbmcgVElQQyBzb2NrZXRzLgoKQXMgcGFydCBv
ZiB0aGUgc2h1dGRvd24sIHdlIGFyZSB0ZXJtaW5hdGluZyBhbGwgdGhlIHByb2Nlc3NlcyB1c2lu
ZwpTSUdLSUxMLiBXZSBhcmUgZXhwZWN0aW5nIHRoZSB0aXBjIHNvY2tldHMgdG8gYmUgY2xvc2Vk
IGF1dG9tYXRpY2FsbHkgYnkKdGhlIGtlcm5lbCBhZnRlciBzb21lIHRpbWUuCgpCdXQgc29tZXRp
bWVzIOKAmHRpcGMgc29ja2V0IGxpc3TigJkgaXMgc3RpbGwgc2hvd2luZyBhIGZldyBzb2NrZXRz
IGFzIGFsaXZlLgoKTm93IHdoZW4gd2UgcmVzdGFydCB0aGUgYXBwbGljYXRpb24sIHRoZSBzeXN0
ZW0gaGFzIHR3byBzb2NrZXRzIHdpdGggdGhlCnNhbWUgdGlwYyBhZGRyZXNzLgoKCklzbid0IHRo
ZSB0aXBjIHNvY2tldHMgc2hvdWxkIGhhdmUgYmVlbiBjbG9zZWQgYXV0b21hdGljYWxseSBieSB0
aGUga2VybmVsCm9uY2UgdGhlIGFwcGxpY2F0aW9uIGlzIGtpbGxlZCA/CgoKS2VybmVsIHZlcnNp
b24gOiA0LjE5LjgxCgpTb2NrZXQgdHlwZSA6ICAgICAgU09DS19TRVFQQUNLRVQKCgoKV291bGQg
YXBwcmVjaWF0ZSBhbnkgaGVscC4KCgpUaGFua3MsCgpQcmFrYXNoCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
