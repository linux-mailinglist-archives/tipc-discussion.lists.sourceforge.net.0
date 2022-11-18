Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 373C862FF89
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Nov 2022 22:45:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ow9Af-0003yP-Ji;
	Fri, 18 Nov 2022 21:45:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ow9Ae-0003yJ-00
 for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vd3+FEu+DPY99Ra5SVxmzBVi0nR163x485Mxu3tP/WM=; b=I/M8KkRk6FKm8kxJxH6R3Y/2tM
 9472353H68PsYJy7xOPVnc6v90lq7IbChXVDiLPytJIki2QffSIA+1XIVZ77UIAnIcjXGtOyYvXW9
 /4CKt3yZgh3NV8cvHHrnYg6wJ45xNVckLOT+dklp5uT2dBsy+bPjuGFXgcmc7ndSpGx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Vd3+FEu+DPY99Ra5SVxmzBVi0nR163x485Mxu3tP/WM=; b=b
 L0CvsQkVdGaN8FmsZvuDUe6LBv1Rzluo6QGKZKS+VUSKggvPgdLfn2EQI2gfWzhR4o1XJpXQNEV9c
 veVLopvFUg2ILfUiZIZfu2GW7stScAyAWRBWneO2IhxNkWSWNTq9JrciVtrnV1gNeqVWdb+tz+GWm
 m9wSS21PDb6pVINg=;
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ow9Ad-00CtYa-Gd for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:11 +0000
Received: by mail-qk1-f175.google.com with SMTP id d7so4389148qkk.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 18 Nov 2022 13:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Vd3+FEu+DPY99Ra5SVxmzBVi0nR163x485Mxu3tP/WM=;
 b=oHJbf5v4d2tS2lfjF5FbP5J+VZq/Iewsyhxbz76GRxV4YKcQrJjFH0CK6DoHQ/r/Ij
 2qZBGRVoDgUybH93Ojhd4IGlvLgWvyOmJLIKXpVLy6b4gJzTzw0qnEUI6XsidoFgNlGF
 ugfM87w9SbJl/itLhyz76KfOt8gcPkW7EsRW4bXfdu8n6yVWq2rAOxIZdRB9mwKNl8gK
 JjurpmT3D44jpSc3VVq4ZtqxNZFE2TG5/e7+ddh2bReYFBKzbXBJb36LRG4eIYUV2gpP
 FSeB31A1Po3QfFjt/WTL9+Ku+pIh1lUAPpO6saU5dTPFb8twGYxwPty4lgacGPifdUMO
 cnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Vd3+FEu+DPY99Ra5SVxmzBVi0nR163x485Mxu3tP/WM=;
 b=fhUq759Xi2Jw1ZcC8PFq5m/96Q+bcTBJiN7nsQgHiwh2iHHq/oR/FqPnh5ct3uLVEv
 +tL7tvlY5LOpl/mXcIAjqjSfMOmnPBg6Fga1PGaiiXE2eLn1sQNDUvZovCUoUOSM5Nd6
 fLojJpcEG/NWugvCtcTggmOsWvadGuh0AkYlpMz72Jm/KufDT65+7XJx8pgflZLL1cuE
 Up3PD9j7BF0dc50osBDTLYqE47eM1o81skSX7YVc54/zhocudX6PpwrazO0mopEtg7sU
 YK9H5X1vOHhGICChmslAZKxEAjHwT05N58CqTXePp1qwJ9C7Iiyswz5tFcZKbyuzxmWx
 dJjQ==
X-Gm-Message-State: ANoB5pltHlrxRNAldkcedrVE+JblgKmKBGEQSKR3SOCqcHl21R/zCThw
 IvLVpMy61LJSFTdK5tz9Foo=
X-Google-Smtp-Source: AA0mqf7FX7wpmEG+aE0lBmfQxUdOIhjArlb0ct8t5ZC3ocYOMLuVQCTV5L2X9mlTCY7P7g+m9vNvEg==
X-Received: by 2002:a05:620a:318b:b0:6fa:442d:f486 with SMTP id
 bi11-20020a05620a318b00b006fa442df486mr7279267qkb.533.1668807905624; 
 Fri, 18 Nov 2022 13:45:05 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 bi41-20020a05620a31a900b006f956766f76sm3232917qkb.1.2022.11.18.13.45.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Nov 2022 13:45:05 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 18 Nov 2022 16:44:59 -0500
Message-Id: <cover.1668807842.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The race exists beteen tipc_topsrv_accept() and
 tipc_conn_close(), 
 one is allocating the con while the other is freeing it and there is no proper
 lock protecting it. Therefore, a null-pointer-defer an [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.175 listed in wl.mailspike.net]
X-Headers-End: 1ow9Ad-00CtYa-Gd
Subject: [tipc-discussion] [PATCH net 0/2] tipc: fix two race issues in
 tipc_conn_alloc
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
Cc: Wei Chen <harperchen1110@gmail.com>, Eric Dumazet <edumazet@google.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The race exists beteen tipc_topsrv_accept() and tipc_conn_close(),
one is allocating the con while the other is freeing it and there
is no proper lock protecting it. Therefore, a null-pointer-defer
and a use-after-free may be triggered, see details on each patch.

Xin Long (2):
  tipc: set con sock in tipc_conn_alloc
  tipc: add an extra conn_get in tipc_conn_alloc

 net/tipc/topsrv.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
